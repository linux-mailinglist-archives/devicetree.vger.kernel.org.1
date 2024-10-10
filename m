Return-Path: <devicetree+bounces-110060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7DC999189
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 21:02:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 24F0A1F24094
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 19:02:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D37DB1F8EE8;
	Thu, 10 Oct 2024 18:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rocketmail.com header.i=@rocketmail.com header.b="hI9EH8wv"
X-Original-To: devicetree@vger.kernel.org
Received: from sonic307-54.consmr.mail.ir2.yahoo.com (sonic307-54.consmr.mail.ir2.yahoo.com [87.248.110.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AB41E231A
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 18:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=87.248.110.31
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728585732; cv=none; b=ZEGnR3vNPqT02FMzbXyKwwweGn6L5K4YiUODWdAqFTRCWhZ0yZjLzzMisMD1k8NvRqxfVma/Mb0L8I/EIYIAH2JQK+2wXukn2GyU82uTG3ucBiDVsaTT4eDhfIsy3msPGNFvJVHcD0pYu4YSz+DTfeAQJNCX7KdSqlaTIW8u4I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728585732; c=relaxed/simple;
	bh=szIEVjQ1VZpn9AeBMl743X5qN9rVrtrnezmlkhwnvp8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:References; b=r8s2Wb2UssAv07j1o1byvmjjnmW8O+iG+cd45rVL1UYtZp3nz/lZykVk1Sm69HGfZptFM74q3ixn4wjY+MsZOx9CxVsc46Gi2YP1rjTbuWeILCHhSdO1/bQOW0jBzzk+74n+vimEBQZVtvFiPBFlq2/rmTa77QovbxSyS/SdN5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=rocketmail.com; spf=pass smtp.mailfrom=rocketmail.com; dkim=pass (2048-bit key) header.d=rocketmail.com header.i=@rocketmail.com header.b=hI9EH8wv; arc=none smtp.client-ip=87.248.110.31
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=rocketmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rocketmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rocketmail.com; s=s2048; t=1728585729; bh=n/tvy3eaa7hpQdsikDBcjlcovlL5UeT2icM5mxukvR4=; h=From:To:Cc:Subject:Date:References:From:Subject:Reply-To; b=hI9EH8wvigktH2gHU7bdpwrLNg1oK7+7tdDBEBZSDpD+6Gs03cJ76RFsJXeaqJP4yqbqUyOah/eRJ6dGW+3Bks+62C3bzepBCrZ1c4Sl2PXvrtgsgEqmeap7V6YAX4zy4g8bb+zM2dRJagb9SzlRY7jffMOLdvgpDNFqTts64U7z14kYx2CSRNbPWRRlZrC2k7Q4gBwZ7nZb+x+SHLP9XUfju7sBY3ISITW0E+CLBtGP9OOjzoU18+w/EJCPRZyhz3xM6EksSRdv18t9f4j+eKAUaA+CbsUt5kxtGGYnjAtShVgAGoe3g92ttuipQe4UyJgo9eC8kvnEnHJuQbfNIw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1728585729; bh=v2kyBal7e8mADmiqrtxU5QW8jHOY7XxgEtAS6677kmv=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=PMZNjaeuIWjIFo6icdE6wABdpFEWT2gPyA22NRDlIhpxyfDMpVsGro00l27+NxaB052g23jiTbqmaln0kPuc0Qu6gmHiTAEuspdVzqLA7uHw6lR8tNCW0jGsX5/CYvRpDLEVyn5c4mB5aq8BkRI3e9ij09kmQnFCBgxV1wNIK1/AGO0nfnPkPNjYxOZBgf21hXv77U6zjSClS++8pPSymZ/z3fyGBPht5ytVu+hfpVuffeS0ojDsVvsOFMsmI6l8IgVIF//3gL/Q8tyNxal5EXHR4rC8QjQ06GOIPtU5m5/pJp2LighTpx5Iaqr1RlpDUWYD/k+o05zAM+Z9vjoqRA==
X-YMail-OSG: kbn3XXQVM1kZmoWwUXLc6s6dTfr2Ycpjmwb4ohJ.lDBaRpcGEnnh3RZo9rKbBBL
 sUVxjqV5DQsL_8m2pDvN0kfTVxVbydYjEktLGapkSfLX7ytXWVDmF.LmQTloivSLzI1VC9lkN96p
 qlqgiKHoodhQ2xhJ1OyJGEsLeXVhXgTOJbkp9kG4XhDaUZamh78gvavzfQDPK8BSGem95UcwXfY.
 Gb_007RcpnMIDDzYHzF5UsKSvvqIlDaaLu14juNCol8uYllHpKlZ2nOCwQOaxK6NsCMCcWsCj_7x
 sXfaOjyu.uxF9ORtrl_ONdvqBElimvWS1TBGlPgByht_S1QTDe.5kDyrdHrBBYPgAvAtcGpVrilU
 sHdxXYJzjAWl58P79mU2rJeMEzD2LO.GvsVFTHlySUPG2p.M3CDymAHtIcxkoGxN5oux1KGhNcjS
 wo_wkHgtDeEzSEtauIR9DEWa0WT3HnqdyCX9kX08eOw72s1giKdb_cDBJtUjQ6caJggxyjAsunxz
 GfPPC5hqldFQstiGM718isSOa2H7jtPzA_tfvipbnd3_Bgbh8cboKzyUxQQ53LPhfX8KD6mmFNL.
 v2Au6Wk7fsZXOe2RRO5zAEHTXyX6I3sZ9TcJlZidg6KnOlhf6Pcr6IJAG3aSNAU0C474IA3b3cmX
 sBISkLNcEKShge1P6Llftxwm_o0ZGVXPPS89e6HLRMAO4NskvzGbRHHdwatf0v1sAU4i5W4_n5lq
 4d1ipZjG9Jryq8lU8cG9CfrRO66Ht3BATL9z_e5KyfPkCayRTD3hcP6zGFTQrv2DmdW_Htz27ID1
 HIp9SVrAiRbrsi3Ah2xCKvhOtWNQpwMfr_2hfgEmINpzsNKn_xg3bgBaXHwMpx7Pihl3KSivHtWM
 pvoVRNT6uMnL6q9K_KhWBqqcASoXuwpR7iJGXjN3G8woEFqHKQAwVrylsW3u0Upo6sOx_vrXTJ3u
 tvpO4wU8i0cz8qyoJdNH0Vk4v5kV1mQsibhQZ5ElL6keqw0R85s6ndomGaFoSYDr2f6IDRwMPGdK
 hrPELe1.b0qG47SRolj0s6VLtZwlj1PlWFvt3zqtMXtI5S5LSUjlfoEORTshNOZujc9iVO9XbjJr
 AlEkubvUCQ0517d26hRwKXi8forVSMsmc5Cv2NJye0i1VwSrGnzIq2_yt3SbI9.VlaEi2bheU7ry
 pB0hmUKRH7LbzMcAxBA5mPbUhKZsU5JVpUBMdEFy9r.Yq2nHMdc649.aESCGmpdlp9GjkAu8niSA
 qHxRCucTsyoAdO0StNbkSIisMA59tTq2_U4DAQtY7Wp9V8iJ8kKtj7ukEm.1jtnrh6asovUQ_MhC
 W5Jj5Y5C.LJzgIoPaAcOyg734XghsX6bdTycF0rwSCVax6OApg_85qa5m8OhZCXbGPE0Vv_fNmp2
 ikAuT99LuzNKKW0nz.hG1NA0jjEy9cb9xIGHscdhq6UaC4gtx1XIuu.m_1dcN_HWe68nF_Ptm_uk
 K_6qnuQv3d4h_4yWUoWbliVyuamEgYOEJalj0dbT4zjjJLJa4PYkduKr_Uhstb1SpYHTELlOwnCE
 163NVZI7Nj.iBdHLFtB95gJ5okP0KFT.TLXXsgfetS06K8_bnRLynx0pp5lbGh1oFDD64EUwOXD4
 z1kwDkSy5XJe2Iay.TzeHsek.Qw2zpweD3Xi79aawSz0LqGVqCdgZN20gv8rtOZZNmItkNuffO2G
 JvCVNji9QxYaOIwqaSnI4jutu8SRYrpybTuyfEeIRIv_W6dK0bnf7XpyxjujNHUL6coIWcFd6qc.
 uG1mMfXlHHdGImMiy0KF9FoAqwayJ0g_WhO_H6SQz7dsqhA5QskOPDewsWWxTYgtppIfmCzv2mpk
 fH.RGO.fEj3vcmYpi5PDmC_G.sRA.ptbTnqjoUce.9WcD9g5sR2I3HgfcqL8Ul2KjWkHqHpL50i6
 9SPhgtPSpzycbkQ_H_V8QzSkKmuKL5KtX_PJXXeAyIIr.VXQD2jYMhiniQlRpiqxid0r4Fd.s7my
 YyM_chA30jj._RsaTIOgeIckK_90msvL02ei47ZRG_cYV34Y3myl4ctOgRZCRncYI2Yrr7u23BfG
 whGQfLoat5pMFvsRQaws.1o7q6MK5U6K6DDfVf_4ROZe2_xGXd8cmztCTud2b2y3wLOa8CE4dh4V
 UY0NP_QHtmwTGjYlhyBd2vGJW9Ab7O6h_HCDY.9cHmmiuoEHhZLJreSFGACPUyKZFEWMtN.P1y3.
 CyMo6fg77JLxd6VpunJ7mTkItaRKmiepj.cuVWdXpM_Tal42QfhdDFkDuYHJN0B_xK1DF38tOfhs
 uXkGRb.hzy8G28w4u25jlHdhdfz7w_aqNi_yOAZcJaqxx65tdKg--
X-Sonic-MF: <jahau@rocketmail.com>
X-Sonic-ID: 4380967a-7ae5-4b12-9cc6-3e60d744e2bb
Received: from sonic.gate.mail.ne1.yahoo.com by sonic307.consmr.mail.ir2.yahoo.com with HTTP; Thu, 10 Oct 2024 18:42:09 +0000
Received: by hermes--production-ir2-6664f499fc-97g4x (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 7a7b462d09211a1a6528a42ebeb90f61;
          Thu, 10 Oct 2024 18:31:56 +0000 (UTC)
From: Jakob Hauser <jahau@rocketmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Jakob Hauser <jahau@rocketmail.com>
Subject: [PATCH 0/4] Add new panel driver Samsung S6E88A0-AMS427AP24
Date: Thu, 10 Oct 2024 20:31:47 +0200
Message-Id: <cover.1728582727.git.jahau@rocketmail.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
References: <cover.1728582727.git.jahau.ref@rocketmail.com>

The patchset adds a new driver for Samsung AMS427AP24 panel with S6E88A0
controller. Patches are based on current branch drm-misc-next.

Jakob Hauser (4):
  dt-bindings: display: panel: Add Samsung S6E88A0-AMS427AP24 bindings
  drm/panel: samsung-s6e88a0-ams427ap24: Add initial driver
  drm/panel: samsung-s6e88a0-ams427ap24: Add brightness control
  drm/panel: samsung-s6e88a0-ams427ap24: Add flip option

 .../panel/samsung,s6e88a0-ams427ap24.yaml     |  68 ++
 drivers/gpu/drm/panel/Kconfig                 |  10 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../panel/panel-samsung-s6e88a0-ams427ap24.c  | 772 ++++++++++++++++++
 4 files changed, 851 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,s6e88a0-ams427ap24.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-samsung-s6e88a0-ams427ap24.c

-- 
2.39.5



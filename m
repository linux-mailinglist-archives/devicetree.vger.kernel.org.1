Return-Path: <devicetree+bounces-147671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F79A38EF8
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 23:25:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4C5C33A832A
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 22:25:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C89981A83E6;
	Mon, 17 Feb 2025 22:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=jiaxyga.com header.i=@jiaxyga.com header.b="afItpxNy";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=jiaxyga.com header.i=@jiaxyga.com header.b="tGgc7sT7"
X-Original-To: devicetree@vger.kernel.org
Received: from send262.i.mail.ru (send262.i.mail.ru [95.163.59.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E830519E999;
	Mon, 17 Feb 2025 22:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.163.59.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739831113; cv=none; b=hS/wB9dmATZTLurRlrrT10Fzv9/tmEUqp9NbPAaObVfbsVcfEE0MnsyFsc3GiU+kX0ZF4AUjDlJ/R9fc7e1UOiMn+DrnnvAx+DySrEum3lyMCb0lgsCGVJzFMH4CQvYu+QX4XHDB88mJexmzw2i9Z33NQc+8ThZBGeG6yoMXZI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739831113; c=relaxed/simple;
	bh=OhI4ziq0nSdlP2ShV4pMB2z2kgfSjW+3Ddnwo46kdFc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gRhZJ2TUl5nYG6SevkCl2+ugrV10BuAHj1dsbTCa2WC6xmKPSyFMt7x5SKk1arYUe2pRnJZ+/gFe0Dc7CkzPZHqpOQSFUuqwOY2MkQbP5z1+pFRzw6wk3dIirDv8YupGwuMnEewXxraCTtX6B4XchJQbVraRz8gKSe/BTe71Jv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jiaxyga.com; spf=pass smtp.mailfrom=jiaxyga.com; dkim=pass (1024-bit key) header.d=jiaxyga.com header.i=@jiaxyga.com header.b=afItpxNy; dkim=pass (1024-bit key) header.d=jiaxyga.com header.i=@jiaxyga.com header.b=tGgc7sT7; arc=none smtp.client-ip=95.163.59.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jiaxyga.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jiaxyga.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jiaxyga.com
	; s=mailru; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:
	Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive:X-Cloud-Ids;
	bh=ySo9qNwt2qjJx5FCY1blF1rmH6E1Z/ogBb20iWMYabg=; t=1739831111; x=1739921111; 
	b=afItpxNyX8+6LoYbwlfY5IglF6vAmaMxf7KNVFkOUp4v2CQ15qogPlslwFdviQK11u3Iiah0pVw
	IW1GL8Ly82FFe6275JBWWBEKmkMG08KJSaaEjQ9heE6gbxf2bfHpa8Nch6wJfp2bPyoJuemppKcyJ
	lmALf+x2KBWfURHigHg=;
Received: from [10.113.66.230] (port=38726 helo=send104.i.mail.ru)
	by exim-fallback-c85fcfddd-gkvkf with esmtp (envelope-from <danila@jiaxyga.com>)
	id 1tk9Xy-000000006Or-49ee; Tue, 18 Feb 2025 01:25:03 +0300
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jiaxyga.com
	; s=mailru; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:
	Cc:To:From:From:Sender:Reply-To:To:Cc:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive:
	X-Cloud-Ids:Disposition-Notification-To;
	bh=ySo9qNwt2qjJx5FCY1blF1rmH6E1Z/ogBb20iWMYabg=; t=1739831102; x=1739921102; 
	b=tGgc7sT7gsvXRjBOTxIP5Kk2xbd7xpPopTgE2736zh47apIXjLkhWWPnUXyu/Wpq36jSOAHg9x+
	rsThq8yXrY0erdajs3OyBiMyLxW0mgYlmjW4Hfmk+HV9ftJa7C2V3tPsyP614w0feGoBt+Y18mZqs
	9y7DNtdiNlFwIAAKjFM=;
Received: by exim-smtp-844687bc8-889bz with esmtpa (envelope-from <danila@jiaxyga.com>)
	id 1tk9Xe-00000000D2z-3NSh; Tue, 18 Feb 2025 01:24:44 +0300
From: Danila Tikhonov <danila@jiaxyga.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konradybcio@kernel.org,
	robdclark@gmail.com,
	quic_abhinavk@quicinc.com,
	dmitry.baryshkov@linaro.org,
	sean@poorly.run,
	marijn.suijten@somainline.org,
	jonathan@marek.ca,
	fekz115@gmail.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	freedreno@lists.freedesktop.org,
	linux@mainlining.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Danila Tikhonov <danila@jiaxyga.com>
Subject: [PATCH v2 0/4] Add and enable the panel
Date: Tue, 18 Feb 2025 01:24:27 +0300
Message-ID: <20250217222431.82522-1-danila@jiaxyga.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailru-Src: smtp
X-7564579A: 646B95376F6C166E
X-77F55803: 4F1203BC0FB41BD93899CACFFF273C599441A9C4784ECFDD53FAB4565A373706182A05F538085040F98CA9E032079BA93DE06ABAFEAF670574D9DF0659F6518318405E59E443B954261E30AE1A3D8EFE
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE705B093C0FC4B30B9EA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F7900637DD7A7F9003AF293F8638F802B75D45FF36EB9D2243A4F8B5A6FCA7DBDB1FC311F39EFFDF887939037866D6147AF826D8ABB993E1618610376C30ED7C9CE1861227658F43EB6348A1CC7F00164DA146DAFE8445B8C89999728AA50765F7900637F924B32C592EA89F389733CBF5DBD5E9C8A9BA7A39EFB766F5D81C698A659EA7CC7F00164DA146DA9985D098DBDEAEC85FF72824B19451C6F6B57BC7E6449061A352F6E88A58FB86F5D81C698A659EA73AA81AA40904B5D9A18204E546F3947CB5C78E0E843E24DA2D242C3BD2E3F4C64AD6D5ED66289B523666184CF4C3C14F6136E347CC761E07725E5C173C3A84C3CC06CF5CFB199D65BA3038C0950A5D36B5C8C57E37DE458B330BD67F2E7D9AF16D1867E19FE14079C09775C1D3CA48CF3D321E7403792E342EB15956EA79C166A417C69337E82CC275ECD9A6C639B01B78DA827A17800CE73D56AD9F5B48EAD3731C566533BA786AA5CC5B56E945C8DA
X-C1DE0DAB: 0D63561A33F958A5CF5F0A398399125F5002B1117B3ED696282AF73F7EBA0B588B25839F35DFE037823CB91A9FED034534781492E4B8EEAD05E80F4396618BB2C79554A2A72441328621D336A7BC284946AD531847A6065A17B107DEF921CE79BDAD6C7F3747799A
X-C8649E89: 1C3962B70DF3F0ADE00A9FD3E00BEEDF77DD89D51EBB7742D3581295AF09D3DF87807E0823442EA2ED31085941D9CD0AF7F820E7B07EA4CF6B79E80708EA62B0EA21CF191D2BC8C25D61B475F5920DCCFFF7A0496FD2539AF49F51687F14C9B80526A8B1FD8BF66B59CB7752D1270140F965E601AD7A576DAECD5F1A7E6DABAC8FC4A39FA5EEE4B702C26D483E81D6BE72B480F99247062FEE42F474E8A1C6FD34D382445848F2F3
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu53w8ahmwBjZKM/YPHZyZHvz5uv+WouB9+ObcCpyrx6l7KImUglyhkEat/+ysWwi0gdhEs0JGjl6ggRWTy1haxBpVdbIX1nthFXMZebaIdHP2ghjoIc/363UZI6Kf1ptIMVYrk7BQKFwEtyvZTSr0ofkeaEV96FJFdyw==
X-Mailru-Sender: 9EB879F2C80682A0D0AE6A344B45275F9233EC877BA2ACDACDECE012BE5914E0FBBEF585E3E578EEF7E6942F2241B56C2C62728BC403A049225EC17F3711B6CF1A6F2E8989E84EC137BFB0221605B344978139F6FA5A77F05FEEDEB644C299C0ED14614B50AE0675
X-Mras: Ok
X-Mailru-Src: fallback
X-7564579A: 646B95376F6C166E
X-77F55803: 6242723A09DB00B4BA09097AEF4FF40FD82BE83A5A2F87B7A5C6E11EF5510D94049FFFDB7839CE9E3D3BB30DB6F99D6090193C6867F40472A9AC786A08328D7AEF8EC1FE0CC43400277AECCC84C3A6A8
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu53w8ahmwBjZKM/YPHZyZHvz5uv+WouB9+OYcBso8Zm+oliTz8oZwnDrFsY77LZRcHyw5ht0smWrfSeTW5FiI8avd9v29gUBslpEZ9wIMwqVP4jLQVQ+dVm7x9BpDHadBV9RMjI809PraZ2sfrh64bjX50GFNa5CC33Q==
X-Mailru-MI: 20000000000000800
X-Mras: Ok

This patch series adds support for the Visionox RM692E5 panel, which is
used on the Nothing Phone (1) and then adds it to the DTS.

Before integrating the panel into the DTS, we update the DSI code to
allow bits-per-component (bpc) values of 10 and 12, since the Visionox
RM692E5 panel operates at 10 bpc.

This has been tested and does not cause any problems (corruptions,
artifacts, etc.)

Changes in v2:
- Patch 1: Add Reviewed-by tag from (Rob Herring (Arm)).
- Patch 2: Remove extra braces in the for loop of the *_get_modes()
function and use ret in the *_prepare() function. (Neil Armstrong)
- Patch 3: Use switch-case to check the bits-per-component value instead
of removing the guard entirely. (Dmitry Baryshkov & Marijn Suijten)
- Patch 3: Add Reviewed-by tag from Dmitry Baryshkov.
- Patch 4: Remove the zero from the panel label and remove the display
property in the SimpleFB node. (Konrad Dybcio)
- Patch 4: Add Reviewed-by tag from Konrad Dybcio.
- Link to v1:
https://lore.kernel.org/all/20250203181436.87785-1-danila@jiaxyga.com/

To: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: Maxime Ripard <mripard@kernel.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
To: David Airlie <airlied@gmail.com>
To: Simona Vetter <simona@ffwll.ch>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
To: Rob Clark <robdclark@gmail.com>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sean Paul <sean@poorly.run>
To: Marijn Suijten <marijn.suijten@somainline.org>
To: Jonathan Marek <jonathan@marek.ca>
To: Eugene Lepshy <fekz115@gmail.com>
Cc: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org
Cc: freedreno@lists.freedesktop.org
Cc: linux@mainlining.org
Cc: ~postmarketos/upstreaming@lists.sr.ht
Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>

Danila Tikhonov (1):
  dt-bindings: display: panel: Add Visionox RM692E5

Eugene Lepshy (3):
  drm/panel: Add Visionox RM692E5 panel driver
  drm/msm/dsi: Allow values of 10 and 12 for bits per component
  arm64: dts: qcom: sm7325-nothing-spacewar: Enable panel and GPU

 .../display/panel/visionox,rm692e5.yaml       |  77 +++
 .../boot/dts/qcom/sm7325-nothing-spacewar.dts |  51 +-
 drivers/gpu/drm/msm/dsi/dsi_host.c            |  18 +-
 drivers/gpu/drm/panel/Kconfig                 |  10 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-visionox-rm692e5.c    | 442 ++++++++++++++++++
 6 files changed, 594 insertions(+), 5 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/visionox,rm692e5.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-visionox-rm692e5.c

-- 
2.48.1



Return-Path: <devicetree+bounces-260865-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMqJLVRNe2n9DgIAu9opvQ
	(envelope-from <devicetree+bounces-260865-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:06:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 289AAAFE22
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:06:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CE7C53003ECB
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:06:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D47937F0EE;
	Thu, 29 Jan 2026 12:06:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XYNXQ4W4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C3B637C0F6
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 12:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769688385; cv=none; b=nONmWDIgDcasTn10Uf7+4ZE6a2U+6ENI/4JMXH4urO8dq/g5heo3l9rzQQKz+2dxFlZEOVCjwdGlt/xl1YfP3SnLvp4Sao11o5PIYReRGLpZBg6UzACnZ3U5zjNV1EyFTFfWkNlBolfM3cXctZmxHUl+YJP3e1z713jEuAuePlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769688385; c=relaxed/simple;
	bh=I38MUjkcoH9V79CpUKSDz1OC341UmQxGErHv0ex1jmw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=FqGo0RDpHyb5k/sc/kwdcd4XacedPDd69GOX22V0wz2lhYagjSbF7QpBEwt4L5qHJTcHqcXyemXZ3NrNC+lJwweIFypCEMdKG5STCyit1SxTPKzpYb5hRLvNw8KfMd8ONcKvj9DoPr39hXVcyw5Gvksq1NCXrWyby5yQWKKZPS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XYNXQ4W4; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b885e8c679bso149082966b.1
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 04:06:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769688381; x=1770293181; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CkBngwJnmvxY2ZcqFRWqtKhnXiiLbRs1c6I12xgJLLE=;
        b=XYNXQ4W4ynZpyeNvzRrDSLy8tLcIf3otS2BwmSEGqLqMo10N1ED66CfSLNcDM+dKc0
         9OC+VUSm+Abnb9pn8FA3qK9DmkuwGUEQ5n6iXoZGgAwRGTrfHMDXOEVkJOhAi/5Rv4RK
         Du/K81ykr8QPDNiAgrvt69oZ6xAbMJakfXTo/1vkd3H7mCXGjrnyr9bAZWv4A16qGhDr
         EK3UBMfCn25s3qOu08R70xJSlvpUKfC+BUF16RvuZYzropRMGeALcfEE2ITZH39/Y3RQ
         PJOZVmYACP5Lr61iKVTvGtTl8zhsXX7ReiAd0ATSvKzNs0c8i5YmFfjmHxsPfNHYQHyG
         s9GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769688381; x=1770293181;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CkBngwJnmvxY2ZcqFRWqtKhnXiiLbRs1c6I12xgJLLE=;
        b=GYKYsFYtWlmOQj89wYE5/tS7XRvkybuWe6OuLFpfpyvdRMokoCkxKITu+SRi+4fQIF
         f1fTp4w4Ypp+lLlf5sl+KIzsp1KCG2fvWNGXb6KPkJjqOyj/WZHQwyAKi4Yf2m9JukZK
         nU4xTem/WxM8Dpj4k5k/eMANX9GMig6IW0vdaETO6pZSCYEXbusp1Ngj2Ad5UmWTrZyW
         8NhbmYvc35VSsuit7rhsK24THSMLD8skVSW8sLS6RDnICnsmasbrRtqkMZnIsvmg8TOO
         iYxne3EWy65adxUgBk31kn6lQrq73nlaeUAxKuPT+n0XDrmVuGYjz2qJLif+Q2uc7UNN
         kbEg==
X-Forwarded-Encrypted: i=1; AJvYcCW9r0F/w1n3gr4LRO0kFQRprwvED7hXLVD5Ubx2MHf+elC+LjG1PKOGXmXitcxWbeXYNOT79no4+fDw@vger.kernel.org
X-Gm-Message-State: AOJu0YzAz0bH4z7oLinN44sop9W45D4xn6uG7cteht6L+bCF9S1ZO2Sf
	/K23i25fHix/lP9NzpTgz7ehLaxMM4mG/aFbReh7yePwdmWDqToYYe3ks2ZlOw==
X-Gm-Gg: AZuq6aJlvNus6XVWtnHlI+9K+C/gW6g6ggad/ODixK5bwIUE9USm/Pveei80BuN66kp
	xkp5aQs7q3myuPKMhkvXwNnYtYKXTW+vMl0pE4rHzPd05hwMIESfLEviBqiffmi2RYXTUehrVPr
	Jw2XR9m/qh1Kg3+Wb8iAopSxnZjS2VB7vPow5VxURPq+CaA5p7zJURECS6pwHmSJJoeIjd5qzEw
	60BY6wI638EHvdYmhgEd0ny79j+c1aP73kmbuhSQ4qdzujoYzBlF9JRJYijWoImWNyBbTNYGe43
	jnVU0fB8DwUmSAXGA+5SnWzKnp7K0BP2H2jiHArcfE0lDmfYg2RhuC7acXralhIDkYRjL+PEafU
	hK0i5JtLUQGtEJDza8QLNpCeXiCjzylizziyZHvceERk25rpnYd6HzMIVveHjOL+0/MreZ0zaCt
	Rz7z7FHs9BhYsWza/E
X-Received: by 2002:a05:600c:3b86:b0:47e:e5c5:f3a3 with SMTP id 5b1f17b1804b1-48069c5414fmr115342325e9.24.1769681810702;
        Thu, 29 Jan 2026 02:16:50 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:5792:2065:403:a80b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48066be77b5sm178642065e9.2.2026.01.29.02.16.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 02:16:50 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: biju.das.au@gmail.com
Cc: linux-renesas-soc@vger.kernel.org,
	biju.das.jz@bp.renesas.com,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Linus Walleij <linusw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: [PATCH RESEND 0/9] Add Renesas RZ/G3L PINCONTROL support
Date: Thu, 29 Jan 2026 10:16:35 +0000
Message-ID: <cover.1769681553.git.biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260865-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,bp.renesas.com,glider.be,kernel.org,gmail.com,baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 289AAAFE22
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Hi All,

This patch series aims to add basic pincontrol support for RZ/G3L SoC. The
RZ/G3L pinctrl has OTHER_POC register compared to other SoCs for setting
IO domain volage for AWO, ISO and WDT.

Document the reset-names as all SOCs has multiple resets.

Document the bindings for RZ/G3L SOC and add pinctrl definitions in
driver.

Add pincontrol device node and add pincontrol support for SCIF0 and GBETH
nodes.

Note:
Some IPs needs to set the register IPCONT_SEL_CLONECH in SYSC to control
the clone channel of the IP. Plan to add clone channel control support
later. The IP's involing clone channel needs to do the setup as per the
below flow

(1) Set SYS_IPCONT_SEL_CLONECH register as necessary
(2) Set the PWPR register to allow writing to the PFC_m register.
    After setting the PWPR.B0WI bit to “0” (initial value = 1), 
    set the PWPR.PFCWE bit to “1” (initial value = 0).
    Select the required function from Functions 0-15.
    (Hereafter, Function1 setting example)
(3) Set PFC_m = 0001b and switch to Function1.
(4) Set the PMC_m register to “1” (initial value = 0).
(5) Set the PFC_m register to write-protected. After setting
    the PWPR.PFCWE bit to “0”, set the PWPR.B0WI bit to “1”.

The clock and dtsi/dts patches depend upon [1]
[1] https://lore.kernel.org/all/20260128125850.425264-1-biju.das.jz@bp.renesas.com/

Biju Das (9):
  dt-bindings: pinctrl: renesas: Document reset-names
  dt-bindings: pinctrl: renesas: Document RZ/G3L SoC
  clk: renesas: r9a08g046: Add GPIO clocks/resets
  pinctrl: renesas: rzg2l: Add support for selecting power source for
    {WDT,AWO,ISO}
  pinctrl: renesas: rzg2l: Add OEN support for RZ/G3L
  pinctrl: renesas: rzg2l: Add support for RZ/G3L SoC
  arm64: dts: renesas: r9a08g046: Add pincontrol node
  arm64: dts: renesas: r9a08g046l48-smarc: Add SCIF0 pincontrol
  arm64: dts: renesas: rzg3l-smarc-som: Enable eth1 (GBETH1) interface

 .../pinctrl/renesas,rzg2l-pinctrl.yaml        |  16 +
 arch/arm64/boot/dts/renesas/r9a07g043.dtsi    |   1 +
 arch/arm64/boot/dts/renesas/r9a07g044.dtsi    |   1 +
 arch/arm64/boot/dts/renesas/r9a07g054.dtsi    |   1 +
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    |   1 +
 arch/arm64/boot/dts/renesas/r9a08g046.dtsi    |  10 +
 .../boot/dts/renesas/r9a08g046l48-smarc.dts   |  13 +
 arch/arm64/boot/dts/renesas/r9a09g047.dtsi    |   1 +
 arch/arm64/boot/dts/renesas/r9a09g056.dtsi    |   1 +
 arch/arm64/boot/dts/renesas/r9a09g057.dtsi    |   1 +
 .../boot/dts/renesas/rzg3l-smarc-som.dtsi     |  92 ++++++
 drivers/clk/renesas/r9a08g046-cpg.c           |   6 +
 drivers/pinctrl/renesas/pinctrl-rzg2l.c       | 285 +++++++++++++++++-
 .../pinctrl/renesas,r9a08g046-pinctrl.h       |  39 +++
 14 files changed, 465 insertions(+), 3 deletions(-)
 create mode 100644 include/dt-bindings/pinctrl/renesas,r9a08g046-pinctrl.h

-- 
2.43.0



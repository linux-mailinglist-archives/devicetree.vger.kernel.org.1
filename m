Return-Path: <devicetree+bounces-275879-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SDCEEkNZt2nwQAEAu9opvQ
	(envelope-from <devicetree+bounces-275879-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:13:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E130229352C
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:13:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1FBB2301649F
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 01:13:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71F0E25332E;
	Mon, 16 Mar 2026 01:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J5x5hzGK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54BC6244694
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773623584; cv=none; b=ShxqgdTy+sgKuYTJtzZz/xUa0VRceeFNeNgKjzdNbrH+YM26aH5e4oVBewsIwToOezdA+5QDWZuxQL+8UMD9X7z0KjSwEzOJlviN72aH90VxGuiIXVUJ0/KBB/4utqckEfkAQSOXYZD/Of0KaJU59nl3pcfKLzSDtMqDhVNVYpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773623584; c=relaxed/simple;
	bh=Kla9z7K3G7PO7JT35vZZgL6VfPtFep7pZDHZTVUa9os=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eE/8Ijhb1kSjAscjdVWDAS3XFIW18+he8GKZDO7JBs/yVLFVQJ1cOZoLfzT6x9ZNTdFth0K6jNEdr0vzm93PbFqlZ3KQRvyuZZhjtpNQ49afEGLMvLf9xziA5FYtjQlsCdKxZFHFEXmkIO3KTa+5pPx5QM5qcbIWPrCHNAxzaIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J5x5hzGK; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4852c9b4158so35137635e9.0
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 18:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773623579; x=1774228379; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aVXeNUgf0taT8KVMYZ+Cr2JPpfIJ6nordAg0M3k0x+4=;
        b=J5x5hzGKrcHiNkiriz7SFhmRh3rAtVqS0vhbjfNAusFKB3h3Dlb37Cr1YxKHikFsd3
         olUXQgd6a6UkPZIlAclhIv2WKe2O2+9psGus9vMkzG6ufE4fR48soIAvm15n/pudijIo
         adkuIIanakWtBUtBvulB/Y0D8C5HRjkFtO8JKr4PZ0eMTOsD+wJ2EB0WHUWtGaQNilJH
         E/IMImTgP9yEuAVa9U3rS8Whwx3xsGvUv44TpRK2FtaKWAJj0Ix8gBMmPBjQfuTRjP6v
         F7z3wNFdHi2ECMUjJ6Z5sfbhqKqhwzeE08EkXI3mNE+jkgAxxXFp1/JfjU2sowZDOgI8
         MmWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773623579; x=1774228379;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aVXeNUgf0taT8KVMYZ+Cr2JPpfIJ6nordAg0M3k0x+4=;
        b=qQJOfKvQkRwv1tgtxf3MCRp8d79exPxKYycMuWqIG5RGs2G3pmpKwjpz7Vf4Yif8IQ
         hBjZaX3D6qxVNLjw0GOhOwa0JwiIk3yciemy7vp1gHcPQkJ9TMDeWR9AGCmrM9ZJVivc
         2DxDDbJg6GVaIN0Qi8agxAOPZ+JZ+5RgTNDfXYIkWAlo2PNTy9og8WR2ATLPO2JIMfIG
         pdaUGDraP/JsjfTfTM95IieAc+4e/XrdjNVQWMnPOReLym1OsK8VjMuikuRR34l8Qcap
         ZEJ6ZwlNt1SFZkPFXI0TRw5GIQ5hzPBEbqLeq5VYIjKR78RSt6Cro/0BdDdxncGTOwOi
         obpw==
X-Forwarded-Encrypted: i=1; AJvYcCVsLoaHYDi1OSCfQ2chv4Xua42vbu6EE7DVwPIEHn8V2PZyfOIohkhlBxl6tcJUi7i0IokPY+Z4OoGB@vger.kernel.org
X-Gm-Message-State: AOJu0Ywg7z5h9+ere4jG7OtXtDcuWccQXwductgbNBOul2rSvEDM819G
	fMFU/q1yNaXhK2/iYLkq6YEivWjMxzcQSmJ4Tk2psL3HXl8IVAHbOaOIn2Ow5QGJlh4GyVa2C1F
	nbuUK0YQ=
X-Gm-Gg: ATEYQzwZRaXyFGaRrtD8muPVY0KnAENWpAaAPfYWKIY/CI4TQ1PTjhlNEpKwYmNBCvj
	tzke4xXVnILbfuhWd+/AYQe2ExMshun54L2qLfqfZuHffrqtybfCD8go70TP7D6LEEm9cnjS66X
	PP8eX/XEhpgA/sh+1pTR9XxUmCNkWgchCLTJ4Z27Ep0z0kKWpslrWfTFaWIfcaWvPKa+QHIycR2
	Hb1xJEWD1OISgus/VJDrOqCVg7Wc4U3uXZjkkKALn2w35zIau07OOzyfg1v1oAFIRVQvQHBEY4d
	J9qq2pa85FCV+6bvW7iho/FkWY/4nIE/3/OkuZCyo5mr8mhgfA/ETBrD368DGODCEpyOLbtn1Qj
	Z+woOqHDNde2A1fs/24YatMFjiKgzFarVe5Eq8wsDpBV6M5DgNBwJTFYcbzYaCnP43gAbee9VnJ
	So2c+H3P0XpUwpY4MHHj6R9B3EMNW1iF3/mY8=
X-Received: by 2002:a05:600c:8486:b0:483:8062:b43 with SMTP id 5b1f17b1804b1-48556702d64mr188594035e9.19.1773623579514;
        Sun, 15 Mar 2026 18:12:59 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.190.215])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541aba60esm560918225e9.5.2026.03.15.18.12.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 18:12:59 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Mon, 16 Mar 2026 01:12:51 +0000
Subject: [PATCH v2 09/11] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x:
 Add l7b_2p8 voltage regulator for RGB camera
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-x1e-camss-csi2-phy-dtsi-v2-9-859f3fa55790@linaro.org>
References: <20260316-x1e-camss-csi2-phy-dtsi-v2-0-859f3fa55790@linaro.org>
In-Reply-To: <20260316-x1e-camss-csi2-phy-dtsi-v2-0-859f3fa55790@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1120;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=Kla9z7K3G7PO7JT35vZZgL6VfPtFep7pZDHZTVUa9os=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpt1ka6QuweJ3/JwPP83uIHSj/eRfiz7o0MJ8qE
 cd9CdOVaAGJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCabdZGgAKCRAicTuzoY3I
 OqVXD/9FCRCtJa9xoF+MiIzXIX4uRuACyThR/0fCAHuvYOmxz0TC3gLcokoz0+RsZRKrqr6NSvJ
 h6CKrf924vsloq0VXOvbXB/uluQuhA00wC2y5t4NQyG+62Z0oiHYWyvBkkNHMc+xQyBidCPpFUM
 GwDzfVGm1OmcK76xpNQA99+l2tNhsLC7na8Qhd/06msJYSDt2BB/DyjY7fncJc1vtQKj4vVZ09E
 VBSwyOXmNgxO7fBMYULjpnLt00QonQtioN9xC2a+PW8pR5Cx4V/7nM2vSGiUVdExqqALewO96TJ
 J1i1TJVRJpNvUgMyo2JS8chmTBJqDXdRAb6XtIk/fOuOwQBDrQO4xuBpnscpdq0lsU6Opmb03UY
 q0V3WvrbcpLjCnmfe3gJLJAdjOF58TnWSf12yDdObzciH20P0XnqXe99/J7zS+2hX2Nlp5Hlgu6
 i5Uxmi/JmMsL0J1l3T4KKzhXEqvdVw59PgYWe7af9CPdzpkabxKVR7PgbPLDMtXRiUTlXdmCVPd
 rJ6J5NF85XCSTmL/zTY1jMivNtUXaIcLWE6VUJMWRzbDurOB8o9zq5a+Xx/sGDGRfjuqL6NCINz
 GxRCsBc/ZglThNHmSqVo/Wj3lm0jp66tZNvwOBEnAw4TsaG2+ImDfROhRkSUetBiXX2ZGPlrm38
 kdZi3KRxma/NJqg==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,linaro.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275879-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,linaro.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E130229352C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Some sleuthing work by Aleksandrs Vinarskis in the bowels of the ACPI
tables for this part shows we need l7b_2p8 for the avdd supply.

Suggested-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
index f10dff1da7f8e..1611bf7302ddf 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
@@ -552,6 +552,13 @@ vreg_l2b_3p0: ldo2 {
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
+		vreg_l7b_2p8: ldo7 {
+			regulator-name = "vreg_l7b_2p8";
+			regulator-min-microvolt = <3072000>;
+			regulator-max-microvolt = <3072000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
 		vreg_l8b_3p0: ldo8 {
 			regulator-name = "vreg_l8b_3p0";
 			regulator-min-microvolt = <3072000>;

-- 
2.52.0



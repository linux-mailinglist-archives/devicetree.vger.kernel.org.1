Return-Path: <devicetree+bounces-277615-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YESLJauyu2k8mgIAu9opvQ
	(envelope-from <devicetree+bounces-277615-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:24:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9692C7D41
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:24:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3AD653038D39
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 08:23:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E57D3AA1B5;
	Thu, 19 Mar 2026 08:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="3yqK2n+5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B359B3A9619
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 08:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773908615; cv=none; b=aEpgFp/WWq3N88rBf4kuIoCd5SsMKs5Gb4SIJEjyNZdr7uvfqVhqDoivZdWs07zbXJ6T7kQV1iIUbp5EZBU8efkNc9pzq+wimVmV1DPF46SSdThwVehXiw8qShxMRnFU/nN8/cZ8PQLMZog0pklVctlgL3LDOuvMkgK5VZxLAhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773908615; c=relaxed/simple;
	bh=fdpk4MTgCCFUAQt8nrxbOj/3thQKl+8AmAg215rAl9M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ktomXLYSJoWPp4UOH5ar/BXw0VD6UYqb4XxgMoGiB3hYKDXYAY8BskkrvgW6MuAcMEbDqqURht5npxAurDODF12o/kOZX9tsiEOxqfjoF514lwWxK0XViywHiTtiI/Rx3fvgseAMsQvpH6HXT1agWDU4EiDicc4W/KWqBpjbc6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=3yqK2n+5; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b941762394aso46895666b.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 01:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1773908612; x=1774513412; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5XRA9gX/8dteqw2ACYowOiwX4yv6N0Hjd2tp0wHZbVY=;
        b=3yqK2n+5GgRRTfO9fW20WsuTaPeRkXJrvevTdIkIVX+R/ZY4XSSqXWm6xn1TRJCuvG
         R4s9QgiNlMJIB0AksIp7dRCRH8YXCqNn/5bQwZLTGxUb0r5IjRL2y2RDRPQu5Ln5ujwb
         X90ffgOK2TCK+ua0wehpzI9xAAipewW5udZs+PjSpLPlIFMccwmAinV2y5etgZfWCdDk
         R3lHyU5dtzbVhOHJopqu2XOiP8ygvrcjFSHeupwmYgWvO+BJ9XhQHLCcJgfAIoF5J0ZB
         TjXtC1uvD8IJNjneRt1iRYCAXs2pcdCTefafFgqql54o1pxMIGOrGvLhwszfJRI33qxu
         I3Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773908612; x=1774513412;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5XRA9gX/8dteqw2ACYowOiwX4yv6N0Hjd2tp0wHZbVY=;
        b=oAOUUcpkm+sVPlNzAwMe/NwWPgynVFK2hIS6IX5OJkUeIzuAaeKLByxBaY1y/ctqC+
         7eJfMb/pjiG9gzL4LUHC3Imy6IZb0xCnjJHr6WZFR0iitGDt6kbPDzIswAX/l/dIbeWp
         GD9yvDXNogsWHGHdKm3Q8IHScqcSEe9huYHUzxTqu1JfdU2HtehoVP9/bD8lCw1n6J8J
         TUT39heu9zVT2N74pCN2sp6XC+AEcIy9nL5fet1k6/TGLwU3vGfro6FKS4MnAoI2c9Z4
         W8mghLKdh0O4XRra8pnklqfKaOg05XIJ9x5Eccqya0NdOFRkSSwCgVVF9NcXsWPNiOi1
         1W+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUyP4l2WoJv4i3iypjeYfJLR/Qq5l3Z0cAOjQ7g7BinMCBiO32PgXT7WHsnXcgPi7WUDK+WJ5YP2Yah@vger.kernel.org
X-Gm-Message-State: AOJu0Yzo0FpF9KC8qUkVP1bTEMgyopdc+LVpJl+j40KvQbFo5Qhr9Cck
	U3Ql4zaExGPpU9NKUsBy+d04QMKe6zUebn+V3nyQOGt2gjafcLxal9LbOLx+u7VBD6Z806DrVeL
	S7Bmk
X-Gm-Gg: ATEYQzxcMA2Lptv1VsFQ5+dLWIThSWTm49c3k3uyzBINSy1Vb5ODMV9vxcDdyP+WNsF
	zeNqSZZG7j7qpD0/kwbQSdNJ11KBVrAOUv9WcVX3Nwyp8XsZ9t3ZZ271vgU93CumGAKahuZ9uUf
	o+EgnK7scT1wNXR9Is+TiqKBf8duVY27OCW3jRlSzIrrXTfudKVW0mNEk8AjdEZZB6oSvJ9A2qD
	tGV0TTHBMp5lgh14H51X5JUIhizcPK9LtPxAHroWqmF/liUfYcdOR2VLGg/kvH9qgMtJL3n3A89
	npKIuVITp5k5G6rqi/KaKTSpNkF0vPgbHcW0tKVh1OGAGHlhde8yafMhlRavfruvJqlWEQ0YXJL
	+wZaLYsfJShyJCEDRA4765ggbNkiBK6t+vVWuzvoTIdoWDRla7GawByKDnHmfsE3ADd9Sizm/Dk
	FfDaIBhoCM8HcQbfmKlQGCm2Felh1EO3iOVmFAmNn8OndSJjrOrpPoQ3wDPKLDpr2ehZ+Yye5Pw
	ab2TA==
X-Received: by 2002:a17:906:c145:b0:b96:e593:fd1e with SMTP id a640c23a62f3a-b97f43498bbmr434848766b.0.1773908611741;
        Thu, 19 Mar 2026 01:23:31 -0700 (PDT)
Received: from [172.16.220.101] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f142cf16sm419743066b.20.2026.03.19.01.23.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 01:23:31 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Thu, 19 Mar 2026 09:23:19 +0100
Subject: [PATCH v3 2/2] arm64: dts: qcom: milos-fairphone-fp6: Enable UFS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-milos-ufs-v3-2-b7c60bdd0d48@fairphone.com>
References: <20260319-milos-ufs-v3-0-b7c60bdd0d48@fairphone.com>
In-Reply-To: <20260319-milos-ufs-v3-0-b7c60bdd0d48@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773908609; l=1152;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=fdpk4MTgCCFUAQt8nrxbOj/3thQKl+8AmAg215rAl9M=;
 b=8Zae//PUHJFF0FJtN23rMqKFnv3U5ZwaZiUdM+BkjrJK2hnabwXyI5noSUczI2b69uNN7bqca
 MKm9nmD8uA5BB38IO32+LqT95OnEDWrcBySaVQLBzCSJq1u/Dunp1V7
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277615-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fairphone.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,fairphone.com:dkim,fairphone.com:email,fairphone.com:mid]
X-Rspamd-Queue-Id: 1A9692C7D41
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Configure and enable the nodes for UFS, so that we can access the
internal storage.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
index 89ba09f48491..bba327cc7a38 100644
--- a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
+++ b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
@@ -838,6 +838,24 @@ &uart5 {
 	status = "okay";
 };
 
+&ufs_mem_hc {
+	reset-gpios = <&tlmm 167 GPIO_ACTIVE_LOW>;
+
+	vcc-supply = <&vreg_l12b>;
+	vcc-max-microamp = <800000>;
+	vccq-supply = <&vreg_l5f>;
+	vccq-max-microamp = <750000>;
+
+	status = "okay";
+};
+
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l2b>;
+	vdda-pll-supply = <&vreg_l4b>;
+
+	status = "okay";
+};
+
 &usb_1 {
 	dr_mode = "otg";
 

-- 
2.53.0



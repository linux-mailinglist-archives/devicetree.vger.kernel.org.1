Return-Path: <devicetree+bounces-261670-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +F0YBfBTgGkd6gIAu9opvQ
	(envelope-from <devicetree+bounces-261670-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 08:36:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 68935C933A
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 08:36:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2538E301F33A
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 07:33:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 013B62874E9;
	Mon,  2 Feb 2026 07:33:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C+Wd+vWJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eg2BYTF4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E6811339A4
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 07:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770017616; cv=none; b=K0qFIh7UOLvSZZzx8WYJz0iODDBJlEoxIL5gWy+vlyJ+Q8IjxQcwG6V1XsjyKY+WuUMiBdD8k+gPcWEG7012FPYaNQs5pAxpXJMm2cy6hMjSv8yJ5Vv7mFlGQjSyVEMgWRgE9B8ZXV5RhYKmDwQNkavnosKgbfo1sksLdK9DYMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770017616; c=relaxed/simple;
	bh=R1+9DqOLrdIccNKLonUBWlhCG72HQzlv0e6WIESPSBc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=KczwedwVbOQyeb8XP1MNwSUjczncJ64pKqNZzcCwwnSgMhOaC57gJE+sT9DxKbv5vYOirkV++MQkkEe4atkS7L0REhs3WeVQGp++HcGZ05EiuHAn0m31bO43H182KejzXmh3F4onZKfStBYJrAZFtZXSftzGJMfnZ0H1fhSuqG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C+Wd+vWJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eg2BYTF4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 611LAA812502125
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 07:33:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=xrKNFSOXyBq
	MJa3MBEKaaABiQhIrFJzIMzf+AyumQrE=; b=C+Wd+vWJNfvOug4w0HnXNXd1/vH
	lFI7Ot5JVivcNel6/F5I+gV/VEZs7eGDZY3cYwtzh5rB9Ygkmc6lvdbDPwOD/snT
	nKhOPro3Wf2zjQtLl9TVZ9sF3KW384Dr7VELPg4udXFETdadbfIewS/J/xaoOoFt
	KlzxxZ0ITAgoNMpWvZQSiuf+OKJvBIVYa7Wvd1EMnwk548fbQKo7vnUmfArVsgbW
	uVq0pWAJScWedt+BgFZetHdtBjuFkgLk4wskFy9SUWamvjV/mgkY/ZFbr6gNwr15
	EvTYR0pvy2rUyUgaOZ8qfqH7LUbZTX2nC3My10TBean/p2l1sjlZxGR6tRA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1awdceh0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 07:33:34 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34cc88eca7eso4191808a91.2
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 23:33:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770017614; x=1770622414; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xrKNFSOXyBqMJa3MBEKaaABiQhIrFJzIMzf+AyumQrE=;
        b=eg2BYTF4uvGpZmUmu84WPDJgzjoKexV2I/xC4HoiZauZPw2s7h7nlgn/wZadCboK3D
         MMY8zJlArya7CCxCeJ3xS8B0AY0JEpaR46PSjNU6EAM7y3bBkslsoQOMWq24GKnSrgBE
         p+2TNUGDnJ7CHfwhC+c2k+m2RarCrGqvHwq3oH4SfVHAMqrSF+88+88s5jqMl70MDFEF
         4SqE3FKGGeqS8nJNxnzOfg3S7ut6RJZxGylaiIcl51yAka8SDextwlaTPwSkOGtQB8ry
         oQzhFotr8OlwIIqupOlPnuJoZKQNeKmuIa5a6Lg9ig5RvfZkSa6OOd7y1HbYQ8Wg39ZB
         34Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770017614; x=1770622414;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xrKNFSOXyBqMJa3MBEKaaABiQhIrFJzIMzf+AyumQrE=;
        b=c0SMbkOetjP5H9qjdRGZzbswbIm/AiPeF0CbPN5EMVpJbfanhkZ+tiVa4Zub5rPhsh
         PbagHgc5lr7RtmUhauHyJ7csu6C/tXV67jRSDUQCAYxRgx/sEUDWsnLtSTt8A6kAXqaj
         UCqhVuX2uQDDoXhfWvv8rte5WsCztf1G4rxsUsyf+//uCMb3dj8sNlUdJ88xZHTVELgQ
         OmkvMQYpJzUeKjLceGO55TOrGDWC1Kcrw9eEhCFiARwpWUk356LaWTZcEPpGa815JUPH
         vbMHAgG1bVaAIcZX5MEj4QOosrk6k9+HG4BjqrN3Jdgz+C/EXQcFKBImlbwvW5dSjr4N
         MQbw==
X-Forwarded-Encrypted: i=1; AJvYcCUnoC7Iozt5LwBGhozpyFUvQPZ/sYfg2LtteTWxwGjx8oEMAhFC7iX+QLMk5oS9b8mv31sQ5zNVuIss@vger.kernel.org
X-Gm-Message-State: AOJu0YyU2DDTBORs7gj85XAt0S42j8c2Osnzj3SRLmxt3hBYIom78agA
	7MwYiEydxWyZpaMrNWyFk12oXZixsoCFHWPIWkENwYakcoYM9L2lkU5qCJUR3q7yI9IyoYl+Y8X
	Y+8rab5IkvWRIwpaF9muFShVlyzYdd9soKKPY0juVyD7N7AjL8JM0JnCIvTA4j7Xa
X-Gm-Gg: AZuq6aLuwwDyAfep7riUKQd2weaiuGKHhVbeOyG0NUH2FSK4BxffY8gIVMd67W/jBzp
	HEWIQh5mQmMrdKEkeMwn/zfa3GkE0HItKN3EDT3m/VripcqUBMd8WbOwMgaW3AJxeWpv8XuT5qT
	q7xa3puZ0q0SSFKbsNIVJTKy7NBJvJBEXPYXvBEhLhvWETQQem38xrMbZxmC0ZmmoBhRUES3ewI
	OjzVYrAx/p1paHTd9R+o5yEEAmdN1DzEdxkbv1nRh+4pnuh9VtIv5XoE/DxRGEcRecj+Krk5iCa
	LdkKKX8fwf2/cx5a4bs02Qe8pscCObem5zyTZNdlQtQt1pT0uQca/hT3/981l9Z7aJE93dYjXlX
	U5vaXGhs0ekuzSoBpdJ/b4PgfhhiHxUM0H94llwNrf0explE6HZvB9lr1d82SPsAveDKiLOchgf
	e6sayjzAyVr1cOijrSG5Dt3uCJeAn0lzal6wgqhtU=
X-Received: by 2002:a17:90b:2711:b0:341:88c9:aefb with SMTP id 98e67ed59e1d1-3543b31337fmr9022452a91.5.1770017614347;
        Sun, 01 Feb 2026 23:33:34 -0800 (PST)
X-Received: by 2002:a17:90b:2711:b0:341:88c9:aefb with SMTP id 98e67ed59e1d1-3543b31337fmr9022429a91.5.1770017613851;
        Sun, 01 Feb 2026 23:33:33 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-353f6103e25sm20758332a91.1.2026.02.01.23.33.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 23:33:33 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: sumit.garg@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v4 1/4] arm64: dts: qcom: ipq9574: Add gpio details for eMMC
Date: Mon,  2 Feb 2026 13:03:19 +0530
Message-Id: <20260202073322.259534-2-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260202073322.259534-1-varadarajan.narayanan@oss.qualcomm.com>
References: <20260202073322.259534-1-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: KpTCXoxbutZLpJVMWkdCaJmKxn_dZnQA
X-Proofpoint-ORIG-GUID: KpTCXoxbutZLpJVMWkdCaJmKxn_dZnQA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA2MyBTYWx0ZWRfX7SkfH4tX+7z1
 6J/17B6/oYdyJlzExKS9qXRBtwE5T+zTp3+Usm5JY57MZ9L+lZA44o7BPLxyY62Aao3wOZU4hy9
 pUcdyXCKs0kuPiMsIGEtk3z0HAw54YsS9/Hb6sR+foV5Um1ndO3eo72BFUFYf5bbl5NfkQygE2m
 v/w8LBZT5BelB5U8AAMzUS/Vh7u+G1qSFDrefEGQqNcWxaeaoedq7mSlscVP+3QLBq5irpLf67t
 X3LjjQJSAyOgniXAID/MC4O3/c7o0/bVeOTjlAvTJkoPpMfMs3xSVOOt2Q79fjkhe0bIlXwRqbU
 JW0wl7Of5rqfeXM0BcLkB298oktCkMlfy/zGttXCo2rsVSig89TsfYNgYHPDCCAD5sjFCGpHKNC
 S41Lz968DpCfF/e5z6TYmk3KSKGxvLsG1KXnt1viVx70PaHDM/msq0d/c5GeQ1rA42wuxNhEGtp
 seHjsrQ77C6eUZBFXFg==
X-Authority-Analysis: v=2.4 cv=T8OBjvKQ c=1 sm=1 tr=0 ts=6980534f cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=S5cnrtFl_diNh4JyZzAA:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_02,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 suspectscore=0 impostorscore=0
 bulkscore=0 lowpriorityscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020063
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261670-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,0.119.20.96:email];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_NEQ_ENVFROM(0.00)[varadarajan.narayanan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 68935C933A
X-Rspamd-Action: no action

The RDP433 has NAND and eMMC variants. Presently, only NAND variant is
supported. To enable support for eMMC variant, add the relevant GPIO
related information.

Do not enable NAND by default here. Enable it in board specific DTS.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
v4: Move sdhc properties from emmc dts to SoC dtsi

v3: Disable nand in ipq9574-rdp-common.dtsi and enable it where required.
    Add 'Reviewed-by: Konrad Dybcio'
---
 .../boot/dts/qcom/ipq9574-rdp-common.dtsi     | 32 +++++++++++++++++++
 arch/arm64/boot/dts/qcom/ipq9574.dtsi         |  9 ++++++
 2 files changed, 41 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
index bdb396afb992..e4ae79b2fcd9 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
@@ -169,6 +169,38 @@ data-pins {
 			bias-disable;
 		};
 	};
+
+	sdc_default_state: sdc-default-state {
+		clk-pins {
+			pins = "gpio5";
+			function = "sdc_clk";
+			drive-strength = <8>;
+			bias-disable;
+		};
+
+		cmd-pins {
+			pins = "gpio4";
+			function = "sdc_cmd";
+			drive-strength = <8>;
+			bias-pull-up;
+		};
+
+		data-pins {
+			pins = "gpio0", "gpio1", "gpio2",
+			       "gpio3", "gpio6", "gpio7",
+			       "gpio8", "gpio9";
+			function = "sdc_data";
+			drive-strength = <8>;
+			bias-pull-up;
+		};
+
+		rclk-pins {
+			pins = "gpio10";
+			function = "sdc_rclk";
+			drive-strength = <8>;
+			bias-pull-down;
+		};
+	};
 };
 
 &qpic_bam {
diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
index 86c9cb9fffc9..4b8c58982869 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
@@ -467,6 +467,15 @@ sdhc_1: mmc@7804000 {
 			clock-names = "iface", "core", "xo", "ice";
 			non-removable;
 			supports-cqe;
+			pinctrl-0 = <&sdc_default_state>;
+			pinctrl-names = "default";
+			mmc-ddr-1_8v;
+			mmc-hs200-1_8v;
+			mmc-hs400-1_8v;
+			mmc-hs400-enhanced-strobe;
+			max-frequency = <384000000>;
+			bus-width = <8>;
+
 			status = "disabled";
 		};
 
-- 
2.34.1



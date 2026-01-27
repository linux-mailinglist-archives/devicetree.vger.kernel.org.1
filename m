Return-Path: <devicetree+bounces-259764-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBedINp4eGmdqAEAu9opvQ
	(envelope-from <devicetree+bounces-259764-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:35:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D86E791215
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:35:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 40CE3305B46B
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 08:34:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 684F72C11F8;
	Tue, 27 Jan 2026 08:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W0lDRZpI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JPUjrDKm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0762BE644
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 08:34:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769502861; cv=none; b=YOwt+2J9SoK6mjHqGpAz7KQbxhgsoMHOqje7S3qzQn4kWnnTdNHp2TS0lr3LK3Frfwu6hyVnnntdu98mpnstORBNtUNBPqatcPWcW62Lb14hwUKPXcwtmopaDh5NmE0q/8J2C9M6Y+UfIkF12Iwj9xakuoPxXuUHe7zNvzYHQ6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769502861; c=relaxed/simple;
	bh=Evg9KaSPswA6me4Nz5cy15rYx00cS6FHnpc1BK9z1Jc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CD6gHNBXktS4CC79RdqyJQVsce20PcRTVweXA+sIUn/aRDgDMXfkkiTXASjQgJzkEWB7a1B8vFhlpdshn3Y+tVXs+Ihpkh/k7UpJPlTVHNd2EP55dAK8Vd4sRRRlBLWPHxbwaycOjNU7G/YDiPSsY6V/naDQJNFbylVmiTHh0G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W0lDRZpI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JPUjrDKm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R4TxHA786322
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 08:34:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3Rs1/shu5xLSU4Fstnkbo5NKjASqKYfDpiaUcIwoXDg=; b=W0lDRZpI0cbfU5oX
	ibSwMjbLr7aFfLUez5r0naLlirzJQ0+sVjJ2fcxp49CNhizZ+GZczwmyU83Iz6Wj
	8Hw9OmwovUNlrY6nDhffuJAne6u0zwo8zXipcwVpZ6UCEPIs651qpGOKwbOfFrd6
	ZLj1OAOAzdvhnCKP8KBNVQuyvp8ti+7eFZ6la9pafBlFf7trXKN9VPnS0az1UuEz
	RIt08Ysf8buyv9jllu1gCz7vHddjKQM0oTqXY3VyciJA/8L2nGboKTr742zxUv5x
	zjsLtIjOfKIWDlm9a/zHHkJD3H6psoXSpwHEo5rf0L0as9ut5moa7mRS76+uapyy
	iompbw==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxg93htkg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 08:34:18 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-12339eea50bso263247c88.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 00:34:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769502857; x=1770107657; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3Rs1/shu5xLSU4Fstnkbo5NKjASqKYfDpiaUcIwoXDg=;
        b=JPUjrDKme8EN/Ude6hg/oNnQoy9WzaJOC+FWMf0G2Y8EWGGSXwnerlBsnkOdyQb8kd
         DAaBcxi9yP33oZIm5UJ5D6e+WGqmVpMyknx6ibafeAkHmQdYMC1oNTC+Jf8Kt5EzeguC
         mE7Is1lssdz6scOjQPN325bmlEeY54pgGaYGhThMIwvC2k6fgVyNbPdbldJNzFw60dbk
         zn+VvF9aXy9/9vPRoTN2HncwcTpuLsC95yJqHar41ht5/ZeNbAHZIP2A3ht9c/5kUlp0
         /j32xvSRtR2381BXMRDiChox+jmhc9jPCjIBc9qfxevCfkA59gHLLYwJI1F4YIHKtTeq
         Gn7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769502857; x=1770107657;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3Rs1/shu5xLSU4Fstnkbo5NKjASqKYfDpiaUcIwoXDg=;
        b=QVqGu74JS5uIaZjW8omlRfbxh7lSXi/otqakbb3di3q7/RLZoX/4oIb2rsC0aRQAKQ
         zMdz3/v1vdCghzw8+SLGdQ7vZnk5FpnwDnlOOeOPviR7jVLSfF07KZ46fXiH18xSnNVS
         nunuRyZ7MybHWJ+MNHvz85ehq+ZzG+e/6Vd4gx34slAIhDXaPz2rAcOvHv3du1nTbuq/
         VMmA2MJMHhIjXjswIyXtCMQitLONP+wQld/xPAoCcGkYX4Xlp8ImCfv2CfUaE/ihr0DT
         95EPcsPdFXg8Z0V1J1+R/wruZrVADaUxrspqmKQ/uJX0prsM8z+2a5OeVnmVHRrVM38Z
         Jp1g==
X-Forwarded-Encrypted: i=1; AJvYcCUPZ472ETeFTwBz0A7QJyBkC3xs0U4u+PE+E4RmMGdT6ZPbKB0pKAFO7UYqFEutpqSX3in3KwopE0n9@vger.kernel.org
X-Gm-Message-State: AOJu0YxMDM+zW8nlm7YMvvhva0QZDjGq0suGxEmEw+JLxM00+1iMs9w5
	xqoLnKMbSdm+3va6yZ3MI72iP45+8N1LbSFhgqStE7Pt2CQTLEAR4VALRe7qyeDti8UPZi15/1V
	U3oq/KD7LkkLD8esojHXDnIN3UlmVCNeYKgKLWQhNU+7hH3XDrOgpHXlzFK+IpN/w
X-Gm-Gg: AZuq6aLo18WDchFxrFqz7pQYTCtrj+rguk0ovK1MCwpmU0U5Srggat7y9P83yucgpWV
	Y3B+yCoXh65vDh32oEDaGo7EIa9xoe8J2BxQ5NQIfRtW5i6CUYW2zPjSGpEFvcmJs2ZIbuMK/zl
	FmqyJdoZSR7sGK2DPY0KOWth1xwPKGzUH/fCHm1smhN/YBH5fFAtUPAMGHXfeVKlJUOJHGY3X0G
	q9Ihj0c1srUJR/tH3LpEXNR7KS6TiSN8ye3dhERjyHmLl111sHJBiMRfQqDgv1LNg6/jMuXfU65
	6PxkI8OL3TiKmkYFmNwNeh9rFB+Plxe9rc73Nbi1mkWUzlU35Y36ZWqTANHRkJ2w/IBi9nicRt9
	GSocWWlObUuDlRXcCSgLBamdaGI0jVlqBWPZ17vvGwn7DrzJR/vP+WcxQEBvY
X-Received: by 2002:a05:7022:6714:b0:124:9acd:328d with SMTP id a92af1059eb24-124a00ae7d6mr577247c88.22.1769502857252;
        Tue, 27 Jan 2026 00:34:17 -0800 (PST)
X-Received: by 2002:a05:7022:6714:b0:124:9acd:328d with SMTP id a92af1059eb24-124a00ae7d6mr577232c88.22.1769502856714;
        Tue, 27 Jan 2026 00:34:16 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1247d90cda6sm21064235c88.1.2026.01.27.00.34.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 00:34:16 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 00:34:04 -0800
Subject: [PATCH v4 07/10] arm64: dts: qcom: kaanapali-qrd: Enable ADSP and
 CDSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260127-knp-dts-misc-v4-7-02723207a450@oss.qualcomm.com>
References: <20260127-knp-dts-misc-v4-0-02723207a450@oss.qualcomm.com>
In-Reply-To: <20260127-knp-dts-misc-v4-0-02723207a450@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769502846; l=959;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=Evg9KaSPswA6me4Nz5cy15rYx00cS6FHnpc1BK9z1Jc=;
 b=a3NB+BQCaDogF8T3xQ0tQLC3wG+l6K2pqE+z1vES1uVGWWP2727klmRW0D+BzPgzEbJ2FA1sj
 jqa/lGEUQW2Da5PBnUZJgiimTa27SzHN4mzeBdq1EefoeWye76vqzEz
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA2OSBTYWx0ZWRfXz1XAIiRETXqw
 EVliWTLvYRekpfyUsbtct8k5RhpfeQTWqXJVWJfjivAzhHd5X3XHrGUzWunfguYs1cKY8a/CgfA
 hMNj9c16f4IvlNyscyeku71VYMt+aAW6RLeYveGd/8LwvDgEuVbsZUHAzZn/hr8lZB8vtGbrsLe
 u6fYwsyHSHTaJNuEdLOUijH0S0DXgkbwM1DOPLWZHcrvJmfOhy2SiyQ25dKyYjiFt/76P1aMZDH
 SEiotX4S385iYagacBdVyDmFxi4VJQ0n+sT0bS7vQOxCh0O/b7pecp5n9V27HQu/8lxM40Wyf57
 5ZtKe6aI9kQoNl7cGFSrzfYC4dm9cZ4muutZXQ1veiGKHiEmb4vCZCBNjXZgO7U8GDeJPrfKzw3
 W5I+XnNPl5WANgQiJPtf+317PlRVuojGWYxNVZsRa5YhsAV5TV/VSWnkOBmr70k45pDyi/s/e0p
 gU49o0dfrHe17gk9w8w==
X-Authority-Analysis: v=2.4 cv=Uc1ciaSN c=1 sm=1 tr=0 ts=6978788a cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=lIVsHN_WdLZ9tVWbX6YA:9
 a=QEXdDO2ut3YA:10 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-ORIG-GUID: 9XzXV4Cf6151kda-Pbq9Pji6FHXX9FeD
X-Proofpoint-GUID: 9XzXV4Cf6151kda-Pbq9Pji6FHXX9FeD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_01,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601270069
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-259764-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D86E791215
X-Rspamd-Action: no action

Enable ADSP and CDSP on Kaanapali QRD board.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali-qrd.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali-qrd.dts b/arch/arm64/boot/dts/qcom/kaanapali-qrd.dts
index 66b423a497b3..32034eed03eb 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/kaanapali-qrd.dts
@@ -682,6 +682,20 @@ &sdhc_2 {
 	status = "okay";
 };
 
+&remoteproc_adsp {
+	firmware-name = "qcom/kaanapali/adsp.mbn",
+			"qcom/kaanapali/adsp_dtb.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_cdsp {
+	firmware-name = "qcom/kaanapali/cdsp.mbn",
+			"qcom/kaanapali/cdsp_dtb.mbn";
+
+	status = "okay";
+};
+
 &tlmm {
 	gpio-reserved-ranges = <36 4>, /* NFC eSE SPI */
 			       <74 1>, /* eSE */

-- 
2.25.1



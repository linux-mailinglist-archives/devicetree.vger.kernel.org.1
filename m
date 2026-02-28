Return-Path: <devicetree+bounces-269561-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIbCDGvpomlG8AQAu9opvQ
	(envelope-from <devicetree+bounces-269561-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:11:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A56CD1C326E
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:11:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 88A943139746
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:08:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60ECF43E4AB;
	Sat, 28 Feb 2026 13:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T3b5x5OY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Iq6b+BfO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3750539A803
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772284110; cv=none; b=B1Z+fGdYjaubG7RxyACQIarbJnMD0R7IQcrhwbeizfW20kFZRxiXpTW1UWWWh6wg+5rA3iq2eTJbTnbLajOTUia6OQgwP3I6mWSMyRjAH//7fVToyq3gMIhgnDZDW2CJ4/xOFwSa1fK7hWV+3ifdjGquwYNsfQrYcns285REGP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772284110; c=relaxed/simple;
	bh=lQp1ObTSUl1IdKxZhheKwOCwEnEZPRpUPXwQVLuGhvo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ThXN343dcaZIEsEs653Zz9h6qVH7GdqmnQqWvBjCSHvF9PB+fvxJjXKBZrJY5FR02fMF7gInBOjvMLxNvH+uchzxsjDXGHFvDCUxs/t+x1r5vqIWSRfMripecKPmgCozvWF9Kxg9q/n2toh7NU/OSKdfoTeRBgv/SRImkTHk58Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T3b5x5OY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Iq6b+BfO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61S90E7V2088261
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:08:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8jm3GK7Gw/eQldHczWwGOOc2v4f3ZcVQ1chEjGMAlPY=; b=T3b5x5OYlgrI9Jpj
	nxgc0miz8rau1mrKcUW9WFiDq3KqbWpta8TzaezF2sq+rOiI60ExhkmL7cElwCpO
	XRJ0jUo2d0Fs4bEgUK+FsVmn/fsRryEr5hOpsuEbSNb7Snh3sYUSGMZpXOHSarl7
	iwZJdz7k5j29wMTLBFe6ojqYB1GmwreD0Y23FzmU4MaHu+WeMtsMfdryt13ssPK4
	qfPtUDGyWtdqnUc61XYQmVg50yqZtCyRoVIy0VdKWr0PckAcckIEKFlax8VPogU5
	G8YPQeUV1//hwMt9UGCaREf+L24SmFRaeLgJJofqY5QiuOosX+SIiIpXx7cgmDvw
	qmbBGA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksgrry5d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:08:28 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2aad5fec175so126402315ad.2
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 05:08:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772284108; x=1772888908; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8jm3GK7Gw/eQldHczWwGOOc2v4f3ZcVQ1chEjGMAlPY=;
        b=Iq6b+BfOpdRLmOAqvOpCm0R+kvFlg8+LfvozDRWvgp4Y6ricQJEliD5sljWUhRFQQz
         4kTPz5Ywcx3EwIsrSz9RNu+5PQkzbrVuLCDQZYEnGqCcI51v3a2I4fgF6kKyK6jeXeKq
         f0Qj5qwSWAeSjtYEhuXlTL4dVt5QLuFm71jhzbJumgE7gDwaY7/12vk002BLzb84meN0
         xVgfMPvGyWIDMkVvzcEpcaxns8O1EWKnWYlJDY6eDk8AZABJRPV0/xMBBkpWRJBCErB0
         vTgu/0Y2UfpoZphVuoI9BhUfm7ou3byJGKs0E9Ge744+LYI2a/M6Zde1C8ueeoaDwtxz
         CUVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772284108; x=1772888908;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8jm3GK7Gw/eQldHczWwGOOc2v4f3ZcVQ1chEjGMAlPY=;
        b=TdQnnvN3OaxofoJy4H6BBhar2CYrRNxysQcxsLyMqE+EjPYHMYQVexmmi63qW8F7uz
         RRfIpMvdyIxFEB2m2kKba9MfUSob1Xp0z64MJHSCrZtw7rahzvr1dsp5EnIXRUddKO2P
         1jk0Lk4IcBdXu1mmGE/rqPMXaRSNea4Rt/I9Q2dh0kpoB0eKFCTK4jNAwmKhMulHLnnL
         OIBQ3SnWSnwkxMXzQWI1rbRxxxSjWtc1ueSQg+c90LQpvtC1NxfBAiHqg5yZkUklimhs
         jPfjLc8F5YktS4gN/QPeJHLrMlKg1rkLePKIt6mdXR8a4ksM0i+0FKqdLx1XILLkwsa/
         FV/Q==
X-Gm-Message-State: AOJu0Yyvi7/kl/zsiX3t+s1vI8cn+XVBGNfeBT6vklCPFO65RvaEEdNF
	b5mPA9KXlNLvLDxw7TrtRC9fRf/RN8QUDPfM6LXDxH/lxfjnnTPxR4CHJSRZQ/QHaU+uAR+eyU7
	Tsyl5HvhuJyIxt2lk4AM/Oyi247mzTSngoIeztj+IYjaj2643ziY3FJ3TSh8gQc3U
X-Gm-Gg: ATEYQzwfM7REAcdBhFEy1VZaYNYFqVvVXEu01dFtXomuXp9+/kttz14At0ah9sOtB9k
	EmofxXYlrSe2CCxFWYtJr712eeNqQauW8Z5PFI7xKwlHaHl5NGTcRKTKTbMJqKjS4QPWi0BMkpm
	XSv0YlmOGTSyb8DkjiMG6bTwFzQs3x8Y/CfksnRQKA4W46dQAjAi/+BSy6UYQTgAiGsBDpLUX0j
	bJC7/vjLXypcVzAA1Eo4wLKcH6ghaLN5Qrg7z9hELPhla2mCyOmHxGs1PL5M2Ba5yjFFnSIeLE6
	I/9CA44TQtgUyiu7/U6+YlZB//1dh8vHCD3m1pomCsNujzKlSc02kgTdyi9DhYv8kXQvaYRfOBW
	Sbkx7kPozWjiAY6lMTKydi8G45BPW+lD52V7eRiMr09kRK9nAajayeBS9QmhBM/XIdTjv5az0eo
	M5dwe7SeOJDR2RHS/cfq2IPLiEy+exXjlNxYZubMMJAt/ju0It8zufXR8W
X-Received: by 2002:a17:902:e885:b0:2ae:4150:3118 with SMTP id d9443c01a7336-2ae4150338emr11939545ad.12.1772284107981;
        Sat, 28 Feb 2026 05:08:27 -0800 (PST)
X-Received: by 2002:a17:902:e885:b0:2ae:4150:3118 with SMTP id d9443c01a7336-2ae4150338emr11939265ad.12.1772284107501;
        Sat, 28 Feb 2026 05:08:27 -0800 (PST)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb69f996sm83947035ad.50.2026.02.28.05.08.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 05:08:27 -0800 (PST)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Sat, 28 Feb 2026 18:38:05 +0530
Subject: [PATCH v3 6/6] arm64: dts: qcom: ipq5332: Add the IMEM node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260228-imem-v3-6-20fbcc1a9404@oss.qualcomm.com>
References: <20260228-imem-v3-0-20fbcc1a9404@oss.qualcomm.com>
In-Reply-To: <20260228-imem-v3-0-20fbcc1a9404@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772284083; l=1187;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=lQp1ObTSUl1IdKxZhheKwOCwEnEZPRpUPXwQVLuGhvo=;
 b=1JES2V8t5HxhQPDHnQCCBDHqkJ9nffzLzOj1dHGXJ7tNJvqnOdZ1L6dO2WjghZalUyfEg/ZaO
 vMXpTvn72/SA/19b87pd8YiwP0D1EyDSZ27CAtcTayMUb80JJfFa+Sm
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI4MDEyMSBTYWx0ZWRfX30RAQMH0CttW
 RrNKYvRBPSoxsRJPg2B9LJZPQfeDpFrwWy1Fh7+ORBibzg2l47fh57h3laPaH1j8j11BLtQ/H7g
 GoI8pSrG5++iMTi7WK2Gvrs2tXlNxnKUKn+OK0HtgHEDhJIy9ZHeBXLKk5RXutNnIyR8+veXKtu
 un0SqfyNJNqqsapPdbEXE3j0MnMvrcuzU5SRLBIOE2EaFlbckV474lf1SAg6ZBND5i1KpDYHmyV
 raJRTSGNvmcKrQDsWa0wRehh2bDP9L55S/JNGlGcIS5QZpQ8O5yfMszmPye8wZvoBC7n7zRoFbf
 jmfLYRUQ3MjldTXJUFigtoPo8pB4/1GAIfnUV+gcmSczya+j0pn9i1C5nEvmre8qXUsweMdh5el
 Mdoq7MH52DJ21SfXBkMLIk4ugAZgPeKfUY+8FsSvG43WeLIHOH81nNhRBg3juz6k8J7GOrRCNz2
 AkKs7Kg+wzfnW5H2/Rw==
X-Proofpoint-GUID: i55eLXV3OhNqFrW45VpW4Lun20iJy6CK
X-Proofpoint-ORIG-GUID: i55eLXV3OhNqFrW45VpW4Lun20iJy6CK
X-Authority-Analysis: v=2.4 cv=Zqzg6t7G c=1 sm=1 tr=0 ts=69a2e8cc cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=g_gtcTFTaut2jdyMrvoA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-28_04,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 spamscore=0 priorityscore=1501 phishscore=0
 suspectscore=0 impostorscore=0 malwarescore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602280121
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,78b7000:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,8af8800:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.131.57.192:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269561-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A56CD1C326E
X-Rspamd-Action: no action

Add the IMEM node to the device tree to extract debugging information
like system restart reason, which is populated via IMEM. Define the
IMEM region to enable this functionality.

As described, overall IMEM region is 80KB but only initial 4KB is
accessible by all masters in the SoC.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/ipq5332.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
index 45fc512a3bab221c0d99f819294abf63369987da..b5f87db419fe7c1cecd05b5a85745cc3971028e4 100644
--- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
@@ -423,6 +423,17 @@ blsp1_spi2: spi@78b7000 {
 			status = "disabled";
 		};
 
+		sram@8600000 {
+			compatible = "qcom,ipq5332-imem", "mmio-sram";
+			reg = <0x08600000 0x14000>;
+			ranges = <0 0x08600000 0x14000>;
+
+			no-memory-wc;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		usb: usb@8af8800 {
 			compatible = "qcom,ipq5332-dwc3", "qcom,dwc3";
 			reg = <0x08af8800 0x400>;

-- 
2.34.1



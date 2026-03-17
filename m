Return-Path: <devicetree+bounces-276774-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLjjBSeOuWk5KQIAu9opvQ
	(envelope-from <devicetree+bounces-276774-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:23:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FAB2AF7AC
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:23:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AC65D30CC7A4
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 17:08:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A56C3F7895;
	Tue, 17 Mar 2026 17:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ai9ROPGV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hH9zvqf/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E46FD3F788C
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773767315; cv=none; b=UQF0ptNtKdLvnCAIvAVIo8/bFpPYyyN6sHJ5Fcv5vikg6wgp0AyO8eKCQvpQZCZPDhpaZFviml20eVnN/hhDQpjm7+EkS3L8lXnkdHEAmqn4yPjMfZzPfYPd0T44Z0Un8W1tBFLH27J5vGtbCao7cK5bjVJPgS2pRnAv3/fbrLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773767315; c=relaxed/simple;
	bh=MN+fm0uRywa6RXCIvCjK+LurNcdN1vZke5SuQyvo40M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=m5o60gNKJ7k3jDVy24cJwP5Eu7fBhk30w6YJU1roQBKcw1ojkENHc7G2QZTXkg/xBINFy6ALeEzPa8nrD/YMJ3QN03FuH61D9T1Evl8mnzstitoK8V1xS2uDZjok6DkSkmeYViRhsiavfYKgOo85BRs45SaiOlFs4HzMHn+Gp+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ai9ROPGV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hH9zvqf/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62HGflNB1413912
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:08:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	brjZW2e1tXJtTUhkh2prRm9WANFehTFkS8Xva+sRvkk=; b=Ai9ROPGV15hP/eqz
	CvFo+Uy/AoH6JW0QdyJ74D2oeTOex6UQtKBWyIFFxvyUUqBU8lGhpsng6DsNCaxT
	TBxT2wIZlbfreLje/p5bTYBwtazDAvrH84PGPTI5ab6ERTwiKufi9ib8xXfzVRTn
	NVxYMHiK1aB+HGVdkYuSuTGJIV7u2oCC01388lBClHDNbaeo1FjfJTBVI5yhouDd
	V8THpc0oQRQbqlyg7PMu08Jb7POxpAze/UzsM4ULMhFT6nTJQ1QPBf4dpK1GTAfe
	uPLfsIQtUK56fIvHNs4eJYQ+Mk4XNhN4yPcT/kZuPfZylG9rnJj7fHqMB48YjW1+
	zPhXyQ==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyapug3nk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:08:32 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-94e9d49f7c7so66302911241.0
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:08:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773767312; x=1774372112; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=brjZW2e1tXJtTUhkh2prRm9WANFehTFkS8Xva+sRvkk=;
        b=hH9zvqf/kDJd06QXj18ZlHmr2FkXOwfcEeA2GqMsZkdWUt91CyT16BvMUUyIi+/N/s
         s1mHehzRjDZKjeACX4KonOklRbvx8Wb4Ii4pQSjaY3rnUeUnvK8jymDhcLjR/KiiGMg/
         ITuNFVY2feUPm3xbl7LOl28ePNnO2GZzdUK/hbDjLD0NLlM5e8zn5/D33IvUj+RsxJkA
         I6nEY4Uia6jfKhZL/ID2DbJ46H2FZZY4AlzIKc7w15GlaFI75XqX1FcWUZu8yJG2g4Jn
         vNPGenGZUIWYmu//x+ByNvuQiXd01wm2iH9bfHdTgL04Fbn+gfoXeQvWyuJn/xmQA2pB
         hhMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773767312; x=1774372112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=brjZW2e1tXJtTUhkh2prRm9WANFehTFkS8Xva+sRvkk=;
        b=ogCXh9x0pOk7t2fgnPp1X2RHCbJiKLThKRRvVhrFlR2BV8KN7ZQLLddzQ10zPPfI+l
         UOyt0MTWSvfLS4EboPmBM/x1JuF0oAhbfox4pBIE2cUYVT2KXcUtv4DwGKz5buvSrAoQ
         No2NfFb0SY5g7WdCisnRfSrBSpyj0kh1BSO1QElX5ybvAqmm098TaXI/wWIkSr1Ecesf
         GhtiL4VRB59hBZoCJXYQqBFWho4c7q0jJk2ik1Mroq1SXGL9RKDgazioxLUSzacIUETX
         Zgs6cT/tlAXwRW0hpdZe5++gs9L79cWRrOhO9X2ZhwGMrlqk6avQd3ctW9jc/kkopqAC
         qp9A==
X-Forwarded-Encrypted: i=1; AJvYcCWRtgRnR6Ya0mebfJ80YiSl3ZiVXqNseHhH20cMG/3H5vj/SPU2Ez4F9moPDkhbb+JhiaArrooMUEIQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwPfrpi8PfbMsLSH/m1mz9xL4C2dnOCZiL6CzdziCQdMkf2VhLS
	U+9T0G2rTHYO5PTE60rKzz1mg4x5XFVUUN6bm4C/N9+N7I/yeu0sv9VDDGTVw2qiASwX/d7X2+M
	WCNT3FYVeAf4WlvdB4RYJbCHZ0+CzgHtelK3hLc6IiSJiFlO3ZoW7D97Sn5535CME
X-Gm-Gg: ATEYQzwz+8xHDKLaKKx0J2IiG5TvE2TMCMWbPNbNMCYiS0/ROxiIeygGcNtiAkygpYS
	a0OrBECwRtDwIvMMAx0z+YySiaqoWn/8xyGToazflZuCLcBhRPZpU0dCfHJ87e70/+42gClZLeF
	ABaC25aJ4lKfUVX54DyBT1HT6OwBrfRDAx6vceOG+2lsNImmEMTc0chMp3iprNRNj+vMxOeVcUN
	F17whwpu/6pJnHK4CBjSBImv5j0zcVvxnt5IQPCnR26brG8FcmZvSjZl9gTwkLOVO/YGhB/5iMj
	lMSjLHhvWnGroO90IUbJ582xqZ0s4+uYJnQSTWSEZ4dvpjFzaVP+crs7K2bm/X33bVGBv8k03Rg
	yl2fRDyRFJQt7HtRLD+/U5o1OZxJj4UhmZzQwJgn+nsit
X-Received: by 2002:a05:6102:e0f:b0:5ee:a0e6:a9f4 with SMTP id ada2fe7eead31-6027d12e741mr288327137.12.1773767312245;
        Tue, 17 Mar 2026 10:08:32 -0700 (PDT)
X-Received: by 2002:a05:6102:e0f:b0:5ee:a0e6:a9f4 with SMTP id ada2fe7eead31-6027d12e741mr288310137.12.1773767311834;
        Tue, 17 Mar 2026 10:08:31 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b51892161sm877072f8f.21.2026.03.17.10.08.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 10:08:31 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 18:08:20 +0100
Subject: [PATCH v5 2/4] arm64: dts: qcom: sm8750-mtp: Enable display
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-sm8750-display-dts-v5-2-fb53371e251c@oss.qualcomm.com>
References: <20260317-sm8750-display-dts-v5-0-fb53371e251c@oss.qualcomm.com>
In-Reply-To: <20260317-sm8750-display-dts-v5-0-fb53371e251c@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2210;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=MN+fm0uRywa6RXCIvCjK+LurNcdN1vZke5SuQyvo40M=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpuYqGJfX/cgT+ZaHWFYTyCOxaSomSRI+3hERXw
 +pAMIquPAGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabmKhgAKCRDBN2bmhouD
 1//YEACLV8VU/h2gaIGXVvlPYGcR7UoNWENlJ1AdHA3BJOTd8PiNBQsCEdV0MTxM3rtB5nfCVlg
 1+3gwMcCK6BsQiYZhiP9YvAW1yrZGU81k9VIIJU0nMin19JTCWEx6NZ5cThzSqb5Pn3MmIcpkph
 +/ZoFZ1mSw1mm2RcktVc2VMP0JOLvLh1eXx5nVNSTUQXUgVyEi2UBTWMZHYEKWOcQk+owxRrNPE
 IXNuomN5jL3S8WtxpYVo7UHW8RJCkfyutW/9pndh7HLx3pucYzmvLjGj48gWOyH+Q3QgiVrlCfH
 iIRyC9K8L9UHN4beLivdvbICQSXCMElc7XXW9aRJnR/sOiuBtyvWlCqcJVE2+RVJTxP6wGXnRdc
 /PozC44h66oPbaUokd0lXBIA3rxQQdGiG8Mc8sOqIx+tJgzE+ZpWB50mowX7gZcqQyQ0UG0KU3c
 4Ma/kpbQUTcMh7TV0jUSW5/NSc0Lx4MkMEso1xPTgegejaqN1ug/vWcJePIREyh5L5gI9tSUxSz
 B4HpHNMDTDoeI1VcVHxluaNnahiLJ3Shpmyy0lm5xOqO0dG1GLtjzWEsUeArmWpbW+wG1wMexld
 kh1o8tL/p+GHM01gSQXWTjgquuw4nE59z7bf0un6ylp+hDs8/4PCbsObmkZjvH7B5MqOk7svnt8
 LbFLytRgtHqj7pA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=bKIb4f+Z c=1 sm=1 tr=0 ts=69b98a90 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=2EIfaDKYVuuEVWmasugA:9 a=QEXdDO2ut3YA:10
 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDE1MSBTYWx0ZWRfXz/zIFi5EZRtO
 sFOnzZ6t9OWzJPR2vP2c9Hqgro57uNTwIoCeZBw5neDWE2EEGhkbWcxPfAQcwQen5UvJKS5t8dm
 UVwQkL16326ZoXwGuA1w417jd5AVLM82OF/vwRMqV9TKzjXSNZLTnAahqfm2Gyzv2DxtBSaBVpW
 2+/jfpW+bNxZy2mR5sQ1Dma7pCHSbENda7i/eD+j3exgfkMk1OuGqAnhiyMSNjoXT1E49F+96pI
 QKXUN4UWuutRI3Az4KslAscqIHMp/a99w/+k4mBKXKnoLAJdpFIHm2LgW/Oxu3tUR0Fw7EfBBjK
 qo9kE/7+E179W88Btf/bkf5wVo+OQm/XXDzORMNk2+zjN22ma630w4KceCffAfC8XhO9iIvcbka
 6S45uCKHoC0owuxQ3fz0HJNAPFSb4PaTXvd000nvQhZeIqklgGq9c+OGwfTTRGd+qtJ98+M1SRm
 ZJRbotSlkDZ5XzaEGWA==
X-Proofpoint-GUID: w-EMedDUV9aaaaqts_z0YNIocNen_byp
X-Proofpoint-ORIG-GUID: w-EMedDUV9aaaaqts_z0YNIocNen_byp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_03,2026-03-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603170151
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-276774-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,0.0.0.0:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 19FAB2AF7AC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable display on MTP8750 board with Novatek NT37801 panel.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 63 +++++++++++++++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index cb718331496e..050a85df7358 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -937,6 +937,48 @@ &lpass_vamacro {
 	qcom,dmic-sample-rate = <4800000>;
 };
 
+&mdss {
+	status = "okay";
+};
+
+&mdss_dsi0 {
+	vdda-supply = <&vreg_l3g_1p2>;
+
+	status = "okay";
+
+	panel@0 {
+		compatible = "novatek,nt37801";
+		reg = <0>;
+
+		reset-gpios = <&tlmm 98 GPIO_ACTIVE_LOW>;
+
+		vddio-supply = <&vreg_l12b_1p8>;
+		vci-supply = <&vreg_l13b_3p0>;
+		vdd-supply = <&vreg_l11b_1p0>;
+
+		pinctrl-0 = <&disp0_reset_n_active>, <&mdp_vsync>;
+		pinctrl-1 = <&disp0_reset_n_suspend>, <&mdp_vsync>;
+		pinctrl-names = "default", "sleep";
+
+		port {
+			panel0_in: endpoint {
+				remote-endpoint = <&mdss_dsi0_out>;
+			};
+		};
+	};
+};
+
+&mdss_dsi0_out {
+	remote-endpoint = <&panel0_in>;
+	data-lanes = <0 1 2 3>;
+};
+
+&mdss_dsi0_phy {
+	vdds-supply = <&vreg_l3i_0p88>;
+
+	status = "okay";
+};
+
 &pm8550_flash {
 	status = "okay";
 
@@ -1225,6 +1267,27 @@ sdc2_card_det_n: sd-card-det-n-state {
 		bias-pull-up;
 	};
 
+	mdp_vsync: mdp-vsync-state {
+		pins = "gpio86";
+		function = "mdp_vsync";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+
+	disp0_reset_n_active: disp0-reset-n-active-state {
+		pins = "gpio98";
+		function = "gpio";
+		drive-strength = <8>;
+		bias-disable;
+	};
+
+	disp0_reset_n_suspend: disp0-reset-n-suspend-state {
+		pins = "gpio98";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+
 	wcd_default: wcd-reset-n-active-state {
 		pins = "gpio101";
 		function = "gpio";

-- 
2.51.0



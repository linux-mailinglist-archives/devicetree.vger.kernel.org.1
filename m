Return-Path: <devicetree+bounces-268162-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APNcHkGjnmlPWgQAu9opvQ
	(envelope-from <devicetree+bounces-268162-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:22:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B681F1934F2
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:22:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F2F2B303E0B8
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:20:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 111F230DEA7;
	Wed, 25 Feb 2026 07:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A5EiotAL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hLVOo5Wj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D222FFDFC
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772004035; cv=none; b=DXys07YrImgCsLmQYIWnwJmyHe9JfOA51jaucR9KbpuHdVPhcdonnsVFPmJpI9XiE9lIXbRXKlp7A8oN0Bcg2hlUilEplCWinNNltnZUvoIiMlIU6Lqdba5eR30E967J9jiClfEzfjoUKdlMZSNL8nC/P3/o1rpkJ2Ego2rMsAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772004035; c=relaxed/simple;
	bh=tW4K+WgSJyLZfWN+10XcL4+EBYZ+0pCMvRvFk+AoOeU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=o4L6/N9cB825WvUqOWNC9Y0OMp3ysen/YqgBqJvwnQulrChyLOhBf4z4rdy2rqOXPB06WAenCDvzbTYOpXfFZ6m3fAS+oK2Ip8CU5uhKlab8KZ7jDbs6tnB4tOFvYsPL2D6yFaRASHWsltt8/IDdRJffJjnrq9dR7Y1bjibrD/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A5EiotAL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hLVOo5Wj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61ONolKv133838
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:20:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kUqCiBd6ikhwKifJPE4u1pdAWzTgL175SpkaOSzjkt4=; b=A5EiotALzfwhjsvo
	5Ns9Zx1yhWozatVMAE5ucVbvosaWXrhCkfpgCZwm9K3E7gglUUfUfy1Al0fw5JC0
	+NElVgh0/PfSdzl82X+0merDkVEq/jG/XyMvbBjcKPoTzOuJi6nIZnk2L8JvPQrn
	fMVd5EVLaYHeveQLRjcy2r3DWflLiyot7LG6uMAIDnRK3p6L94ZW+IjQcfjVrXOD
	ZMbHexWSlPIDSPdrG3/pcyc0JPTgCHQ6FAWzaEtJaR3bWNgNCOHp+6vNJmVF/hM+
	k9G/RXa3RjMZb0FVOjeJSNFRPbDij+KvhV0N5yywOwWdFflXxGbdbvL7Jqq/BPpm
	4wUMsQ==
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chp1592b0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:20:32 +0000 (GMT)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-7d4c3d9dd70so94732289a34.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 23:20:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772004031; x=1772608831; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kUqCiBd6ikhwKifJPE4u1pdAWzTgL175SpkaOSzjkt4=;
        b=hLVOo5WjQiX/js+3JH+GFiYnXWlSxlGZTIsysTC2jDbmIV3LnbNsHPD+PvErBK4EmM
         3mE08uxVQzx3xEfNP8J8LpbS2yPiBThbbpcZBT4YOleX30bXb3zGkxt2FZTVVwGyrLYL
         TTiCr4O+SxVu2q0WahpX4V9mhjId4eH1qXvjyyGNQPJPyxqzr0dzJCsXNMG0ZZqO/jHn
         OUW966SyBaClmsSk0NFy+xPlBgvf8t4nq2CsVSOQUF2TRpSEXpZ/twcYKy1tabnqIG23
         0N1Qp6Haa6yascwKBrVQu9TyVFQlq08GSaWOE3EwFLfJfZ3y5gsCcJrb0odIC8yBaE+R
         6/Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772004031; x=1772608831;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kUqCiBd6ikhwKifJPE4u1pdAWzTgL175SpkaOSzjkt4=;
        b=k2XfblFoQLdNIsLgvVS+Scj7JWJ4sFWMDJqZpvsv/d/jUUhNltbTiw51i5EOteJWuG
         plgr3zVtEJoJ7kH/vS6/f+X9M8+uz8OH4iN9+VPxWPUnqZ6t65Ut1Upm61mcpKlBhVwP
         8uXNbCQ1NwF9Yz5ROWb6N2O4IEbUcGXpIOzNTob+3OctkFQtWBRGYLD1aWgC4cV8MHGn
         JRn+4cs0Ue5JFDm0BbJH0NKz+8/OuIf+NPT5/qRQ6vikOl8FOWv8Y+QRpAU/9GM7ltpx
         q5h2XLR+xrdKk5Db3w7ij2oxULlEJ4td3/KR7nlzs3zAft5YWKEOXLT55tPllRehnMOq
         oMRA==
X-Forwarded-Encrypted: i=1; AJvYcCVP2IQYInFDzJOYaF0mZfLgKmZHIKSugo/DrdPL6xSp1E43qizp3m73Gkel3mAlWO4SzP5oEBl+YjpP@vger.kernel.org
X-Gm-Message-State: AOJu0Yyj/nUlLzrD+lBU+OfM+/QZz9/yH/lIrHg9KX1xTnFvvWyA7oXr
	Cpcp8eFQ0DSYDI5F0qt7VX57mZAC4I0IfGj3Zwn5+Cyi/0WgaR19PKk0vAs+gcPccDR3+Zow0Pj
	WjF1TWmS6I2E1kzKEdPLmFBMWn6qazzC6mbEiep77tB+EwOSZXyfWOwhzyeBBW8SE
X-Gm-Gg: ATEYQzwhK2VQ4NgK3zDLBkWYZuY+42Qe4+zzDaXp4GLVsBdCM3PqU1zTKv5ER96HQtL
	85CyFuEYeZ38LDK5LiTzvOtnsak5OXxPOtRyMtoh9oi02USSD7DEf1Nzu601fyZ5C4q8Px2Fq45
	B79mZ2TUc2liX7KHuslKPqKA11i3fieCX6OLDXU5ONlJDqOLvYJYnlmfzbX8q2FTlFtcbVsGT8o
	m1TYoXPbaaUMrGv0EY/iFfAZn+TevQtnPCc4KtVohrO30a/R3GaUS+sYkJXkJnBySE3csMhZ5qe
	1IE/AE1N07f8fyPtANetxJAFQoVauUPvbWJQ4ezj+o8Nt5G1gjGRsXGZypcdmcW0dW3HfqCTkMu
	OiZenLHilR5IHhFthPH8WKc7Tp7MwcnWobefRogFNKcRQ2qAarwiDx/MusRE3kN5YP3NJqEXz
X-Received: by 2002:a05:6830:650c:b0:7c6:cf19:1df1 with SMTP id 46e09a7af769-7d52bf527demr6602437a34.30.1772004031513;
        Tue, 24 Feb 2026 23:20:31 -0800 (PST)
X-Received: by 2002:a05:6830:650c:b0:7c6:cf19:1df1 with SMTP id 46e09a7af769-7d52bf527demr6602415a34.30.1772004031037;
        Tue, 24 Feb 2026 23:20:31 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d52d038dcdsm11711730a34.16.2026.02.24.23.20.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 23:20:30 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 23:19:21 -0800
Subject: [PATCH v6 06/10] arm64: dts: qcom: kaanapali-mtp: Enable ADSP and
 CDSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260224-knp-dts-misc-v6-6-79d20dab8a60@oss.qualcomm.com>
References: <20260224-knp-dts-misc-v6-0-79d20dab8a60@oss.qualcomm.com>
In-Reply-To: <20260224-knp-dts-misc-v6-0-79d20dab8a60@oss.qualcomm.com>
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
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772004019; l=1007;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=tW4K+WgSJyLZfWN+10XcL4+EBYZ+0pCMvRvFk+AoOeU=;
 b=vkAXnOPhfwr2eut1vvPbOoyFabyfDGcyiBgVPT73B/XerPm7r6/IV80UHhH40g04CFMSvh0pQ
 eZEds9TYdTnBm9TtqRLjGDdMDkEAKltlu4bo7wivWKReyA34fidBnZS
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDA3MCBTYWx0ZWRfXzl7eosx25D5O
 ItMyaNXM3At6UW3QNLP1o0F6M/i9ujHnn61wcxQN6FIjSQALou4/edq2oRyVdTo1ONJjjBO+UUB
 h1w/QxnqDnHGGjuzPmRKRZ3DzyA+A2CZ0eQoj4K498E9YZ1T9zYVp36B9nqcLFMq8gS6Q9cgNkd
 Zv5/ttiszkrYOUL4VuT0GD2xSbKyDLTUMqqnXqf5xfa4BDc4RXgbBA7rHrrP6eT4xLor7XI3z+b
 wsbbFRvwT2ItIF31/BZSO6uVrRGf0WYFZXiv9EjTldkOMnBCS1h2NHD2zEptpB/T0IwLGR5CWla
 WHqW2o/8DBtYlIATDlUKKQMVm1/KvoBD03lgCWBMX8BMU2uHQA58NRf/Th0Rg4seys3xfUCf6Rt
 Qat5+sMj7OkWTrO/qVVgLc5BZEKKZjKbfyoZeoNKlT+TP1rxmgJ5CV+D96NzCQv40GiZ513n8VC
 xHmE9ZtdIz6FkE26XmA==
X-Proofpoint-GUID: Z3Ve0rKaV2FYa8RqwPwuYDAf0Seb8fDX
X-Proofpoint-ORIG-GUID: Z3Ve0rKaV2FYa8RqwPwuYDAf0Seb8fDX
X-Authority-Analysis: v=2.4 cv=etXSD4pX c=1 sm=1 tr=0 ts=699ea2c0 cx=c_pps
 a=7uPEO8VhqeOX8vTJ3z8K6Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=6pSOtZClNuHiBGgWezYA:9 a=QEXdDO2ut3YA:10
 a=EXS-LbY8YePsIyqnH6vw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 impostorscore=0 adultscore=0 malwarescore=0
 suspectscore=0 bulkscore=0 phishscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250070
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-268162-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B681F1934F2
X-Rspamd-Action: no action

Enable ADSP and CDSP on Kaanapali MTP board.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali-mtp.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
index 32a082598434..3544f744fd1d 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
@@ -684,6 +684,20 @@ &pcie_port0 {
 	reset-gpios = <&tlmm 102 GPIO_ACTIVE_LOW>;
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
 &sdhc_2 {
 	cd-gpios = <&tlmm 55 GPIO_ACTIVE_LOW>;
 

-- 
2.25.1



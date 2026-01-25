Return-Path: <devicetree+bounces-259255-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SK7BLn4hdmndMAEAu9opvQ
	(envelope-from <devicetree+bounces-259255-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:58:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 299BC80DDF
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:58:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6D815300A531
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 13:57:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E4CF3246E8;
	Sun, 25 Jan 2026 13:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e4g0RD0F";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LQNbd1k5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DCAD3233ED
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769349468; cv=none; b=ubNsNCpyt2wvEVpVYAJNRUM23WtMcfzxgshajwkfHDUho4wx8xI0HP9EOFdQ1v/qQmRAuYIGGzEbfAlR9rQ/xlNRwCGGmlnITO2VnltSztr9tj8MjnDGvz+vmRaloGrr5sC67vVX38Mr5V7hJHfqBs+nBQb6vMnVDfmZcHNVyLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769349468; c=relaxed/simple;
	bh=eMPPp5QdHl6l2+RHuOJrKXZ3iHN1D0E9GpkssxyQIzE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MFtp4FKkVZgFMhBLNcPJ9Xg72/Bubf252iOYRjGKZ08C7AcTvBuWdAxuCQc38BiyX1XF/8bqzLjIxR+tnrxK/McHwlJfuJ0t1sax1fOrWLZ3Ryqe4GAIQWApkqQigMd9k26gRBbVzoUjlIn67a4HQRTLJuXLDQ/k4C1b+USXsyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e4g0RD0F; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LQNbd1k5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60P606rd2775188
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:57:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X/jnU1v8SbYVQvup/ww910IkEwyTZhceq3Rp0gE4nyQ=; b=e4g0RD0FzSWL82T5
	eMDARqqlrrVeGLuYJxoXJ6sHWwOU8cceOjLReDJMtdTWqkyZCfioY92OLxQxuIBC
	KaQeIoQTvM+uyhTTUilzHaHxa/N/eoUkhVQK2E2qEnqknxDM5YayRWOT1lzt5q3M
	I4wveAKwOHHF/jhcN29e/IZRwPFZnc3EDkI2VA0kHEPQhTXoyWboJsh+WKL8TUMb
	9amoJgLFrGdbE5ljELZgPnMLeja94FXMU0a24/GyD/7gQoJFTB26ivuHmL1YlOIT
	Rm8+LPlsWDzGiTRv1JYvVZLmukA1jNbkrrbpfSCXU6YboV8jNYAcTVFAK7yvayDY
	iJdULQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq9tt611-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:57:44 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6b315185aso18670885a.2
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 05:57:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769349463; x=1769954263; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X/jnU1v8SbYVQvup/ww910IkEwyTZhceq3Rp0gE4nyQ=;
        b=LQNbd1k58LjxT8qe0vocncCuHYEe9yoZGhopqEpcjIrOPx9a6MWp8HJgvkL+t4PsrK
         DdVzJBziaZi/+4TXlCW4+0iDu8aM41BMtKdahmiOdUk1xB9Rn4CmpxzgAvIm8Mi+y39S
         a1Kgt1V50XXoLrAtoYUE0sa/4rIPGb6tF9+jSqH+A+40G5i5FDaOMH837JKTz5N5NwLX
         eGMCVyr3cVBNJHT+9fNYfnnW4rRiCzwe/1/XB7oD7Sw5xdYYKHJX+HKQlwr5xN25C5Qf
         iynY5IlB5kLcnM9cGlFkktrjsCmvKDmmd2F28eDoLRrEByf7V8VHCwv+abjbcMwRIidv
         PL+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769349463; x=1769954263;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=X/jnU1v8SbYVQvup/ww910IkEwyTZhceq3Rp0gE4nyQ=;
        b=Ct+ZgILZ+fVbj2ftqC7R9PuTOacsLOeKp2SI786Pm967WSIdFsopPm2F7K+/jx1MNX
         Vg3Ro7HO31Lni/ZYZb5zGB4D79YzC00ZsdNDldEWb+3p3++/Z8uEBcF97/M+Cfy5qpSb
         570Xd54JLAoWFoELdrWhY87obtu8bVLFqi8sFdp1S5w0yn19V7uPrTZRqUcyvTMIFcOX
         CoY8c/TgLUSoqWdyRA70Ys77Y45tqP5D466XkBLKZ6AM2C+aJbrh1jkQVDDKer+sAsYZ
         RZPAOOv5MmzaZp5MwtWi+WG+s74W1sERSnfiIFEH/eP1JA550q0uwfozRJ5uFzw1No/X
         AwMg==
X-Forwarded-Encrypted: i=1; AJvYcCXhTrRrvCc1v85LN9vOGp1oiyYq1cH2Pf+7WFEhrBokdjPwXsQwdcI/uqMooVt65l3WQPZ8R7uXDwYD@vger.kernel.org
X-Gm-Message-State: AOJu0YzBB2YqNa6tp/LvKthO+vkkcQXr5CcChjz0W5cvH0xszHcf4h1B
	zqUEEtYC2brjJceNf4lFmbQPeZIqCDUzDsYfXN7xNCas1sgANMmFXBc4JqUQYjSxBSN79mIDfHh
	0SWensQ2LihxeW2R5w7gQEXHgmiKFyVCVMKmO2eU5AVMCTHihNbGJb7+63FGWqxMfETmnFcWB
X-Gm-Gg: AZuq6aLuqecTM2S/Q+HkomgYcKSRHotEQOXa01gd2ePOzq47eCq4rMU6gww2eghvqP8
	/ZBz/ZZ4BeMhhyDG84QdopNLvui9iekFNO/X0E0hHdmvvU+GRU69txLWzUl3KV3mxzhjmcbwZqI
	X4kJtuWdqtiXDAUlhltRsJ9zGtbahszmZAq/KKIbh2Zq78ULEbwymwiiM8vRBk1XoUYZ/QfEBo9
	sGm3b9Ds+X5OMSIcTtQbzriTfydXHkv5ZaZ8tuAFJV8hl3SYwogo8eS2QR2uQqZRP+aQ5UaNtPB
	hRJyRXFmcnaxYlEgckIbKLBPqHQPKcd8bKNQ2hZLvUuqTL+8WBkthg6od+UB1DSw1a/jU40BjoI
	b7MfYrouQrGYXVQzH9FiQgtIl/CKGslv6Mdgvsj8hKHxrWpHma9R1zdboFLVKyrR3CkeqOZ5Esq
	zR8qrSxy7C3QRQ9iI4ufbu8y8=
X-Received: by 2002:a05:620a:2907:b0:8c6:de9c:bda8 with SMTP id af79cd13be357-8c6f95728eemr186950485a.11.1769349463506;
        Sun, 25 Jan 2026 05:57:43 -0800 (PST)
X-Received: by 2002:a05:620a:2907:b0:8c6:de9c:bda8 with SMTP id af79cd13be357-8c6f95728eemr186948185a.11.1769349463106;
        Sun, 25 Jan 2026 05:57:43 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59de4918a3asm2033621e87.52.2026.01.25.05.57.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 05:57:41 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 25 Jan 2026 15:57:28 +0200
Subject: [PATCH v2 5/7] arm64: dts: qcom: sc8280xp-x13s: Enable Venus
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260125-iris-sc8280xp-v2-5-552cdc3ea691@oss.qualcomm.com>
References: <20260125-iris-sc8280xp-v2-0-552cdc3ea691@oss.qualcomm.com>
In-Reply-To: <20260125-iris-sc8280xp-v2-0-552cdc3ea691@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=951;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=rkZGIV8zHoppbf8XaAIcqSxhBd4bGzlkBwNa40cVeqU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpdiFG2qhUXRxWmKDAZ3dwCylQRaUtFDMwnpbrv
 t7AkBFQ49yJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaXYhRgAKCRCLPIo+Aiko
 1ZXtCACkkTOwlBnX0IPB1eHxI2uHcUeDXg1fEKDSYqlK8e+gR8Qe+ydtmJhbjTIeX8ov5uNZou1
 xqWJzOyClJOkyKQu+bixyvX5BbIzxRtLAoMghKzQsYoI9bUNothc7f1d/ATkvHzGcBEswb1NMaT
 1hFQozhcLna9enl9uK3PEDNhf9+U2dyMptmtEECCK1/rpDyOohDBdj3pTj/B3kxF3vBp3MkOXwR
 XVNUXvPq9Uebp2E8l/x1RVgLe4DhDKJcx3JgOleycTPg8CyjQWc9Pzwc5lvXMBTBeCVJDWx/6fT
 vFqN6lKUcTv/ji8ZZNbR5vvXrJtEo3FHSCPS7UNkxNWYSIy7
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI1MDExNyBTYWx0ZWRfXwpkrTCtatjnZ
 gSGBEOR8ijr2GC1Q1fkCwfY9gB63VEr+5tsHTU5/cLAGPUsGQ6gAVuKclHcJ0YMrE+i11dgvxT1
 ru4wEuPC0ahpocRP1NWn/Bfg5+DS9jZJmx7gXm9eWm7NLDBdTDe5T4ZillGXxeh4e8RR1UKHvad
 khiZyGvIP33W11fSOAgS+aUqnzMmM5qvaasBFAon1Fe75ziuKKoNZsKH0IsDKJi2ffxrNSPRDaJ
 tQAPVAt8QjLRq0rI7zW0Geh6qkAxhJaudBWNhbeV7j3STIyXWRZ2YonZ+xeC3Jme9o/MoBQUuXb
 v7ctHB3AV/3jUKjDnjUSb7qplBo3vPs6hYLKJXlnVsjnmiei1fBLfFABX6TXU1GZggztB3Z9Mu0
 RysB3LtM8FiDufGssN3E6BjEWxyatULk+i99J0OY4yktsQ50qdQ6MjSPDYm7keaVP7hhQRh7NiU
 B9w20JFqF/5ZekJbNYQ==
X-Authority-Analysis: v=2.4 cv=QN5lhwLL c=1 sm=1 tr=0 ts=69762158 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=9kCQqHoLWY5iHRgZhBMA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: jjcSbSn7yEYpPLHiw-SQZcsGsn8gjkoN
X-Proofpoint-ORIG-GUID: jjcSbSn7yEYpPLHiw-SQZcsGsn8gjkoN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-25_03,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 adultscore=0 malwarescore=0 suspectscore=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601250117
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-259255-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,linaro.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 299BC80DDF
X-Rspamd-Action: no action

From: Konrad Dybcio <konradybcio@kernel.org>

Enable Venus and point the driver to the correct firmware file.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
index d84ca010ab9d..62f4593958a8 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
@@ -1474,6 +1474,12 @@ &vamacro {
 	status = "okay";
 };
 
+&venus {
+	firmware-name = "qcom/sc8280xp/LENOVO/21BX/qcvss8280.mbn";
+
+	status = "okay";
+};
+
 &wsamacro {
 	status = "okay";
 };

-- 
2.47.3



Return-Path: <devicetree+bounces-259322-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6F9yIg/NdmktWwEAu9opvQ
	(envelope-from <devicetree+bounces-259322-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 03:10:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF4D836D6
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 03:10:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BB2783005158
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 02:10:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FEDA235063;
	Mon, 26 Jan 2026 02:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HAtayM8R";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="A95fjh5/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE3720A5F3
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 02:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769393393; cv=none; b=GCNfq/t/QdAny3TPH2ju35AfqI+9jha4gwNM0Viff/y2xPHL3ECecpYD2bs0eV1kEBjES/gifwL4cUxZN6NMtZWakNsoCMV+TtHzaP9hbro03PVUT2osjiJIwsahvQ94LiaBF9YGJtJa6HFP8VsVc5Qc07IxcSq2MNcWMwAzrYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769393393; c=relaxed/simple;
	bh=qAcp8mzrTR2YNg/h2RgYQ9MnbaU92InMMdC/2PvSTZA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gZvnBK+p6d1LitHgrtd6LPmOnaiOpQTbhvrDJWNzRcpmaYfetLJO4Rrm5q9sjD2uN79ZaQABtR65eP5hN6Thw0o/yX0WBO+8K91EDB4LYUGMEnpDja5KebMPREKH+pFWzCR/0T79Oo20oh4o108VBBGW6Hpi/cUVGml6nLtx6ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HAtayM8R; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=A95fjh5/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60PCrmRk3229726
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 02:09:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vLpoe2WrWglxJlT6bTDJn8G3/t1K7ubvAPno0YGycwM=; b=HAtayM8Rbe3a4ZBu
	FgvTS9y19sl4lSMpvSQ8frbSJcecF1hqsnYGodZPh24oymyTRw3lAi5plM8/nMoT
	sNv8/MOtG89AOV1wgpDC1G3jruzr6C8M93tSpI3SPfJMNROYca2OT3PBhqsvAg81
	xIEJuO7grxa5h/tYrqkBV2rrss04venc3JEkHkT4oWCUzYL/awlNtaCPK0K7TZ04
	mAPJ+mofjSe4HuUmc4X4aTm5nvMgfBMVC4iZHdF6PySyqXpWqSxRJ4Zf7PjKJRYW
	WzEL6sJHcN9VlWYru7jOqrYJVxPiMAkskp1RvQWcybe3g+0ZpiCP5/tMoNgmmV7V
	A1Qh0Q==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvw4wtkcy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 02:09:44 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-894709fbae5so126170196d6.2
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 18:09:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769393383; x=1769998183; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vLpoe2WrWglxJlT6bTDJn8G3/t1K7ubvAPno0YGycwM=;
        b=A95fjh5/y1uGg80140jlfzdg2xzO21t5pbn71BLI+Lrx2Fy0lxMvml/MjvZmV618kv
         J5pWUPCGVRw3WsLiWt8O8wqLq406us3w83qVqc1oTStq5YWYfyr1yqLgl7QJ5mzOCDAG
         0u4/t2+/lUeZAda4vDSZOwtuU0Wdx2yc2+v9jXhaB14NE9MUfSytK7yTB2h70le7Xno2
         EAVW6n51FoOCrAhvM6Hs6EvmBYGapdBKfn+ypDjK1Nh71MIwsusUJkNMphX1QeK4DDiR
         FmrOfMzJ4NfrqUuQF5rPhllM0NLYWtNqckrj2Qkogxso/zIoTkNpLvWv1GwN5LejG9eA
         xc7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769393383; x=1769998183;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vLpoe2WrWglxJlT6bTDJn8G3/t1K7ubvAPno0YGycwM=;
        b=Voa9Ho18dMjPAspCdmlfxLPl5cLLmWfdHOLoqxWT7Nry40abaHfUvqYB9kVhQaAZ2q
         XzK+4nLCO6Cwth85P+dUZx1PaQLC8sblUxKOSU/Yhw3b5tGyNeT/Pdv1DXA8Hs40LqAo
         zHoc61B93EMTS4zqYClycCrlE0A3hMp/2QbemnnA8yk1S1W1ZpCN5TymOOWhMJcluJdV
         NZ8NcEQ+J35QeQmZBjabZ5MTY31aj231iA6O8Y1DD7m4UlneX+ovWlbuvmNJ9NUD2jNm
         oLLzkIoGQLf06tvoH8jkL7kTAhlPB7B4yVLXdCgc9oOYV5b13STk3qUN4AiHChjIghgL
         Jpcw==
X-Forwarded-Encrypted: i=1; AJvYcCXhfiIDNq9J7Ftsp8EvK0IqZPygIxMpN/3r03zNoVj5nllK/+A/07fqlolygix6gtvnrAARENz6FxJM@vger.kernel.org
X-Gm-Message-State: AOJu0YwykLQdZvosQlC4LVV9hAKy8UlzCNBJCojpAAhwiTECuu1hAZ4T
	TUTq9ucsB0QMPJuGjLarOkBu7MhJoPHr3S/1+B07ibC5yrURQrLxX6STzkvZGPxiT0Ey17rAdUB
	fyQaX1XGSPQm78QDbhGBv5PDEFxW6hilthCxcenVK2ubT5h4ROqYkdXG4coOiqIIs
X-Gm-Gg: AZuq6aLCyjlEXGzvrNRaWf6woMPqiV+VehfBMTuVhp5+xo5KHQWEXX8Hzbb6+1h07oF
	ir4uUkBzcp2+zVs7C8OMVRDeGVNLKWuBjGrUDlzK2v8yM37KIgwjxKgGIIhfzjBWAS8V8GsC0OB
	sb7CJ8zGYwXBRkSNYqnL3h5fLPGF74rmudWZXpx83D0J10NXklhoNKmd6TGodoPg/uCfpVT3mBi
	+OXj8sjuUUnazJQuAa7pX46j+rkL4cD5MJjsDl2GbIFL36wXi0YNQFjKz0cRBFqJsK+JWRAFGUQ
	Axigkjtjh68FljwwNjq41pcag+J1AHz0klFxRzTB4r+rhZeKEdpP0s9FoCtHZbl2zTZhbVf1WAk
	OKpmot39Rzkyp55ZdvD3KMmk40Z5gOUMo4yjVZrTNX8Ibvf9mbDo//PX4KZLlqSViGhbvSZabOf
	WETMjbQ39/YddBXhq0dXQNyoQ=
X-Received: by 2002:a05:620a:4723:b0:8c6:a034:9225 with SMTP id af79cd13be357-8c6f95cd6bfmr332110285a.35.1769393383478;
        Sun, 25 Jan 2026 18:09:43 -0800 (PST)
X-Received: by 2002:a05:620a:4723:b0:8c6:a034:9225 with SMTP id af79cd13be357-8c6f95cd6bfmr332107185a.35.1769393382972;
        Sun, 25 Jan 2026 18:09:42 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-385d9faed52sm22778201fa.2.2026.01.25.18.09.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 18:09:42 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 26 Jan 2026 04:09:36 +0200
Subject: [PATCH v2 1/4] arm64: dts: qcom: sc7280-chrome-common: disable
 Venus
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260126-venus-iris-flip-switch-v2-1-b0ea05e1739a@oss.qualcomm.com>
References: <20260126-venus-iris-flip-switch-v2-0-b0ea05e1739a@oss.qualcomm.com>
In-Reply-To: <20260126-venus-iris-flip-switch-v2-0-b0ea05e1739a@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Douglas Anderson <dianders@chromium.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1231;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=qAcp8mzrTR2YNg/h2RgYQ9MnbaU92InMMdC/2PvSTZA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpdszj8gB0es0zPr2Dd/YWcc7q+IXX0RFuMrki1
 wqx3nCCJv2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaXbM4wAKCRCLPIo+Aiko
 1cW3CACUesFpfmmuc+SbBNU3gHUA/xi40138YmAFoXQ4wqUCRe5wphXpiuz5ZcaNdndOL6HSHsH
 6nRkXQTbS8uaDBvZi55s65IT3IkpaAfAOmWj6rS9AksQ8bM9XWmVMFYS7HKgJsIufesc5JPiYUM
 bXwXw5+Cw1Ji2jDcozwYlqnwQzk22ryIVHkoGPq9aU3B8lqZ9D+5rGF3N7qVNNpjoDSwWtaxS6R
 9y3IGVDQ7qh2vLeGdS11/IlNGRpzskADxsr6fksckyawKRCKzGcoSmhtW31RaG9MqUthbYxRNm0
 Jx4vOKp3+4OGXQBOq4erQXyZvMWHKFwDTpxriacbz58xh5id
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: -v2iv_fK0tif6OKRkV_B_I5HHHznM7VA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDAxNyBTYWx0ZWRfX4tdKs/AYCfQV
 DphpvX/EH8iexW5W9+xUuxjWMTbqjZG1ayd7TDT37XXd+jTwPg96dtKrotM843u4g3oBNbr6JEi
 FiOkaai4hJgvbmRDZRV76ccUSDI5bR/rOW9gbJBQoMhc+PmOf2vMrzBIIQN9bAV1+LSr/QQh1pG
 ve0c9bYuHIiiPRhUwITV3BVh8KoWeUT6djWhPyWSIVHHH9B42wXhhSpObJHgG5gTkYp8+Hn/WrV
 jmgJE2VYRyBm1WDdW0y6mxO9fMa2bwBeTXl7GcSfUtj9FSRZamNkkkPr6DWNCtZuhs3aBO9lJoj
 ZNGyqd1rS1XVT6YADwpqfxsN8eTaVl5z4enLkWFFbNXcNm2+AQvSUDEQHQMmIALO0v1CYNaH8Ta
 ncmtqSiCW96Y97kuFFcrO+Z0FQwAil532vqsGa+ELyxah/NbwLodUZgHSmaIy9/PbFixXj5yqzr
 6VoJLvtcvpIJrqVQjgw==
X-Proofpoint-ORIG-GUID: -v2iv_fK0tif6OKRkV_B_I5HHHznM7VA
X-Authority-Analysis: v=2.4 cv=POgCOPqC c=1 sm=1 tr=0 ts=6976cce8 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=cm27Pg_UAAAA:8 a=EUspDBNiAAAA:8 a=foIlI7qs2i6qjVKSRT4A:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-25_06,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 spamscore=0 bulkscore=0 adultscore=0 suspectscore=0 malwarescore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601260017
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-259322-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linaro.org:email,qualcomm.com:email,qualcomm.com:dkim,chromium.org:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BEF4D836D6
X-Rspamd-Action: no action

Iris driver doesn't support non-PAS/TZ setup for setting up the Iris
core. It's expected that the ABI that is going to be used in a long-term
would be different from the defined venus-firmware subnode.

Granted that the SC7280 Chromebooks were cancelled before reaching wide
audience and granted the feature ABI changes, drop venus configuration
for SC7280 ChromeOS devices.

Suggested-by: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi b/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
index 617a39d32488..debf62baec9b 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
@@ -140,17 +140,6 @@ &scm {
 	dma-coherent;
 };
 
-&venus {
-	iommus = <&apps_smmu 0x2180 0x20>,
-		 <&apps_smmu 0x2184 0x20>;
-
-	status = "okay";
-
-	video-firmware {
-		iommus = <&apps_smmu 0x21a2 0x0>;
-	};
-};
-
 &watchdog {
 	status = "okay";
 };

-- 
2.47.3



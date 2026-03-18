Return-Path: <devicetree+bounces-277118-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IBJEIHyBumldXQIAu9opvQ
	(envelope-from <devicetree+bounces-277118-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:42:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E36C92BA169
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:42:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 49EE73107F07
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:39:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4953139280A;
	Wed, 18 Mar 2026 10:39:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oTpUAzdq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="b1oF5A0e"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F8D63A63E8
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773830386; cv=none; b=ov6rpa/JgjYlAvrfwmuenBKClxP8ngPgeQY18gC0zbAFhlKGtT0zXfqiTNmbvK9v8BtXppMwUIS87GD5PXuoWYICOrAC8Qqm5ZTmRjQrZZWLf0xdbOxstfQY0JCqs8hMNEk4u7KHFlRpkqfk6LkMiSQ/Vaa548KwtrFEnqOwS0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773830386; c=relaxed/simple;
	bh=+1xFNvObLsaA7YVdBuQQEfCsGZyYyif+MyS5pUfiHLU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=a2+ReKP8mxVtXwp/hk+cETv9CEtaS3UkvrUw09Yp6Md6uRrB84f4CXr66lU8ygKYtR2b0KKc7SyfpAisL6GNrcpuV0kjBL3R5HejJXcmT6mMchBAxOcyJVAFirkWs5TV48V7m0Y48rogHLVom4NuEhoPsrQVmYmw3h3tOhwtWqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oTpUAzdq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=b1oF5A0e; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I6ZOwQ2878239
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:39:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5ZWVyLMJKoEeAGhO1XSx1IL832XHAwKE1WtNtVyKx2s=; b=oTpUAzdqES5rxu23
	zV2bJPQBmXhwOKTB7SfwuhjZVzbPLGk4dv89MF9g8JCkg/NJEvVFVzQ/5/semE9Z
	YzowEp9BY4csCt6cJj7Vj9O83lZiGSRqD6MMH3XilbaRShcWxaiIPBkTJut+nWr0
	i0fobCb6w79EuyWM0kuSUGa1iWbVkWn7MCLOLgK59gdFa0G53RN4Y/sUDZjv0T6t
	Sh6pnEd67VbxjLxTqxTpRyJDIq+pYy0Zg1iXECZ3zEEi83t+T+Lx3WiGecUekL8T
	yOS0Rj5tRM6xNO0uFFaLrHj5BvX0f3Fcr8y5OUY7UFBkIuXFlcmiaz3YLVH/tB+G
	hPshVQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cypwr12qp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:39:42 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5093a985e21so527082041cf.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 03:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773830382; x=1774435182; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5ZWVyLMJKoEeAGhO1XSx1IL832XHAwKE1WtNtVyKx2s=;
        b=b1oF5A0e32OvO2YnKiato4v57sFez5jcDZ5hl4HkxrCFqqGBtx3nJf20op4yr5tgBV
         PR7YLfBsoVH+EcG59SnjRzIAGkNoH0gkhocjp9JmjbrOXgj/L/1JPISU/PYeJQDjKi1K
         Rn3lULFTg1gmZp+oI8al2lW/v0ub0ClrWnQh0xxAPQrsy+3AB8Xnd6g5vPw3DMQnxDqt
         n7kFb8qk4Bf05j7LPN/Y3Ep+xgssQwI1ayVkqohQq8IF69sb/reSfurvJBZlUiGeLzer
         06og50x9puCqSUF2DgFPpla/pj7ZdOf3lA8ry/WOdf/XZU6H7Yf1n92pe53CQsC1gFOi
         40vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773830382; x=1774435182;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5ZWVyLMJKoEeAGhO1XSx1IL832XHAwKE1WtNtVyKx2s=;
        b=ADTuUGPwTbalx/JdZ6AZdkjBmZGqj0kRuuOeNchEApTozHrwtVaJ5wogQcO3d5yGGp
         WscMNAKfKssN5V2hQmh65SZkt9FvattMTvkleA/C3HOYeVrrTXoOCASAcyEX8DfFCfTb
         /PAtb7udEOThHxW9/J13kSPLq1MMH4E0fkiO76mVVEHdB31WDyxNBZbz4PqoWnIqen3t
         NqcZS9SSOIUftF2StFKfHHyq0VaHfq2rLal+KDRwdbarmMqE6Thd70Ae71Hf7FYBrzb3
         Vz9QCI2vscMDS/Izx4T4eHWgJ6wlztPg+qpLQyc8lW9o7HxxvO3ijV13AdsGVaCS+EN2
         B03w==
X-Forwarded-Encrypted: i=1; AJvYcCXyV4xXbASpsp/TsViFj4YGn5gacCGcvVXMiGFj60pIByjYyaqh+keSwat43HJvmxtxJ5oEl4mNlRQY@vger.kernel.org
X-Gm-Message-State: AOJu0YzvbMm0SOHkYId3Y7n1azdJeH14IjeLMYm0S4V+x86kQKKPEHxU
	tISi2gOH94Cf3idwyxOKZFjB6lJ8mFeHsKx+wD8GrnEozjuPnwpn7FTLPzMzvnx9mfAGyNJcxOq
	Chfz3ag+aRqXqJXMxjBMR4qKkuSuTHEuxpqCHBQ+LoKsvUUMn9mqZpDE4ldXgswd0
X-Gm-Gg: ATEYQzwXiocQFBOZHGZejUvjmv47NY8zt64TqYBBTr6myeNMToOy0CzMV3JlUxceLWH
	4sQNV5ZVGN8pMiHeS3mc9OCu8kM+raMNaI7ycf0TyqB1vZhiWxFIbE4w7tlgNIL8OsobYcZ2tUW
	ycAPukeP4ieO2H70YWMp3CjJ7FtvE7VacQaMD7819FOhafHejyqNR2dluFJRX3V3VlhfCN/O37O
	63get/lQcQhqh72G0na95+GTB/sTh7Sfw/tYuAHhSlr12nofh0KrRL2wI7A7zDZpZDLwtgRWbVE
	2wwckrXSRaSyRSTRS5m1YfrfV4P9XHYb8+d6IYDSL2VeZAYXODSQUiyLgyrvwQG4lnON3+lmK9S
	GlucXEh5MaJnbhSfH0FidKwOfXs95j/U5HWCIzwWXbgZT
X-Received: by 2002:ac8:7d55:0:b0:509:2053:ab60 with SMTP id d75a77b69052e-50b1487e8c3mr35481951cf.47.1773830381671;
        Wed, 18 Mar 2026 03:39:41 -0700 (PDT)
X-Received: by 2002:ac8:7d55:0:b0:509:2053:ab60 with SMTP id d75a77b69052e-50b1487e8c3mr35481651cf.47.1773830380945;
        Wed, 18 Mar 2026 03:39:40 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b51892161sm7300906f8f.21.2026.03.18.03.39.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 03:39:40 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 11:39:11 +0100
Subject: [PATCH v2 3/3] arm64: defconfig: Enable Qualcomm Eliza SoC display
 clock controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260318-clk-qcom-dispcc-eliza-v2-3-8c05581168d1@oss.qualcomm.com>
References: <20260318-clk-qcom-dispcc-eliza-v2-0-8c05581168d1@oss.qualcomm.com>
In-Reply-To: <20260318-clk-qcom-dispcc-eliza-v2-0-8c05581168d1@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=872;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=+1xFNvObLsaA7YVdBuQQEfCsGZyYyif+MyS5pUfiHLU=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpuoDkkuQju9reoCvOLERBUh13aHhJ2t07/IFOk
 gVL0+rTrCmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabqA5AAKCRDBN2bmhouD
 18ZhEACNln8W7qjt9o9TePNSw7HOGiRsW9PeBq7FNipyKiDRHGfBqJzy46tgSm975hVSdgGgTdw
 3bQGlibGcJzVp8szF24NQ3nlrCv/iq3c3YV6ISL2VgZDn/0X9STNso5NJHTX1grVpF9sRP1RtHi
 ymX1VImPARmB3bLitZ1Jk5PU3G4g84L2TYI0muCm6LDdsjnKuJ+AxjBw2Q03b0GHNOPqgxO9PjX
 ccYagLpo8LbV0GGDi2IQUHAFu1W/N4B92s8Db59kVHZvN+URRHXi3e//3BCISMTPxqgq6I4HSx+
 z6UO6ShdjFp2H02q69gi7Ez1phPI/bqhhgtrG2gHgleoSCDs7tDjP087LqTCZaq+0pOXsjhEd3p
 /3uLyRlntHoG0KgTeZeMdYCEICArGkWL59j/SsbYmeQiXI82u8NZ+uxTIxzMQp04QSSSvWw0Xcs
 yfBQQ6pHlGSPxUlnkR0TeeQs8huc4on+ZDyLlLJernk1Cq5J0CEz0Akpy+lvkRb+4Yg6JrIsvf0
 ltmEDXXPfodChol7clDtJ0b5CWYqXBr+r1rDbb2iTFFSnc5OuMyqj/d8J5FsYmzn0eVwOPpQbb/
 z2EATFdW1LDqhc1VVF0qlpQvqD0kYur2+TUZyTRWu2O+gRvXWqLvqhW+3Z2MqPWpHWTtjBxakUz
 mhpMAAlaDDNJpWA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=bIcb4f+Z c=1 sm=1 tr=0 ts=69ba80ee cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=C9QGoBBn10ZjAcoWwycA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: wT6buV9LtiBnFq3FioCllcBZ5x8S6aV8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA4OSBTYWx0ZWRfX0+OQ6EK919DK
 tB2mP/YdoYZLG0kNRkNXfUUFXzY+CglG9jqQdPqCxrAbm/8mobiyT6cbAWfowk+UJwp2Gk29VVv
 mhYsUzOBR+Xn+OPAu/eBpCc7AbH4+MDWIONySqOy22LcQwNNhhBFt0CS/iGJOo6S+0pqIK5KoAL
 yQGOSAGWlA9zmH+2E2CFa/AstkY2etty4/nUe1niaLaoq0h8GHrKvvrtYG9VoFDsl7l73B9Q6X0
 PyjrKkmVJTMMMiwnqrHT7pWlwGZqCoqOJNawqqSKuckKFOY+0JnxHsxbY8i2PgpOhu61akbKs6A
 DRXp1YxYQDHHScvcnfPXPQw5+g0MZ85DNVtY8Vx4E/7bC3NO8uye+lhkdLbvwwgo7JxzaXOPP8s
 5NMHhuHRAxYR2WLCAW7S9x++txaoS/rRTdzgAMACF3aPwJuKbqgR+QmM40P8J/HZ7DQccs3+I4C
 6hPbwaa9ZE2NCrbEnDw==
X-Proofpoint-GUID: wT6buV9LtiBnFq3FioCllcBZ5x8S6aV8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180089
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277118-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E36C92BA169
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable the driver for Qualcomm Eliza SoC display clock controller, used
for example on Qualcomm Eliza MTP board.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Eliza MTP is being upstreamed:
https://lore.kernel.org/all/20260318-eliza-base-dt-v3-0-8a50bd2201ed@oss.qualcomm.com/
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 18881bd239f9..d8938863b84a 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1458,6 +1458,7 @@ CONFIG_COMMON_CLK_MT8192_SCP_ADSP=y
 CONFIG_COMMON_CLK_MT8192_VDECSYS=y
 CONFIG_COMMON_CLK_MT8192_VENCSYS=y
 CONFIG_COMMON_CLK_QCOM=y
+CONFIG_CLK_ELIZA_DISPCC=m
 CONFIG_CLK_GLYMUR_DISPCC=m
 CONFIG_CLK_GLYMUR_GCC=y
 CONFIG_CLK_GLYMUR_TCSRCC=m

-- 
2.51.0



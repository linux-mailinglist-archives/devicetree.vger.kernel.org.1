Return-Path: <devicetree+bounces-257254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 14979D3C499
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:07:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 32922569DF8
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 09:57:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACFC13D522E;
	Tue, 20 Jan 2026 09:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J7CPl5eT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bWZErov1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE8263D331A
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 09:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768903029; cv=none; b=SsPEzDuvDv1lNAqZmw8savfKnZEla7jJ5EQPrtoVwnCr0m9sNKBTGBg7o1pCrRWzhYD69b24xYnLrc6fmKk68R3QtjXrpAzIP9eS1cKBZsQaMXjZAEhl0hekazCicUOnarOUs9qKJEknh9Lsb/WlkKf5X7N5/iE6qbUiDZqeTAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768903029; c=relaxed/simple;
	bh=KKPpwl3PRgiv4NCoWVUTvYsEZb1m0fIotFZUF3K3dbs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZGiuyqL8v0WxQXF4iacDkDO6ZVv+x5BizwALEbpv2xVq00oPzpxFyY6c/637OZVIBkA1mK16WNyEnfHJoiJeJr7dEXTtDKanq0Nro3EotXwVUz32941WYrjL5wxXFgXBYNvdw00onHsyWpKEqzaD0FV2ELSf0cTB1WklEvcg/HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J7CPl5eT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bWZErov1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K3sKWS3252355
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 09:57:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2l+XSGNfvRBN7OsA6oPPy5KlQtETRGyeIvn7Bx5fW58=; b=J7CPl5eT8/2B+4oc
	lLQ9qYBHQVYvdJ+g1ouFH96TcjcuznRttAKFSbhfk4Im1zDHU8LHTykzi5B1uNnc
	t2nYynSqSwELTAvJpEhrcZxAOlv8PqevQ4r6Uf1fDGaXPyyvHeOu68UzIm0oYEMn
	8HwDDVqTPMbfj8SL6IaLJoiBvM0GpSkNLuUf7Vw7aHRnWLx+atFoNPuvQfYGynkt
	EbHJHi9vM0H+shLiUbbB9yutA+NoQsGWj7gcHipRUEAPAAp7LU8IODZhEcywY0PI
	zvBCEo4smCszNpUxjl6vQvIo0eT0zmglOCDuOCIv1w1UWZaAQAsXDkwvkMi3XcJM
	DltKWA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt27ah1d5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 09:57:05 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6ad709d8fso673235185a.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 01:57:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768903024; x=1769507824; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2l+XSGNfvRBN7OsA6oPPy5KlQtETRGyeIvn7Bx5fW58=;
        b=bWZErov1o4P2pBLdc0lM4y3wU39zwhNPlIWnEDTtn37HfLRryFL1YFqY6EeqdTLJmE
         idvCPOgSZRK/EUue5N0Z2qXrzpijQKHe/Tkndk4rJ+PPSxAl55hQa0k9XAu8H5zkIWF4
         881XbqgbL6S7e55qLm4LPbe5cmjICUwUVtGr2/tNvHf/IsVtxakEXxYkIoyYxC0D1cx5
         fkj/5PCJCEtMlrw7+U6zSQLnRa9DJm3nbGkAQcOAfAzIUKmsamf6b5W0vuPdan2CxB+h
         h6AAV19wCnhQFPL4/CIWfakLiUOecFkrImU0OIF+hKuirNsNpP9WuvBbSf9dj/W2BNO6
         Dptw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768903024; x=1769507824;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2l+XSGNfvRBN7OsA6oPPy5KlQtETRGyeIvn7Bx5fW58=;
        b=YvS5heokDOazg5Lib7Vb422xDGBHjgkWZV5qLM9xqZPHBqlKrbS7jE30c8whYcdKmD
         UmiTXc4VZoWsUfDqMu8YzjAOfcy0QhZHgAS/0o6G2Kco+a9DO12wKYIiaTgSZLpQMAjF
         KSjpQ/ly4hQj64aHW9LUBV+F9ZHBljn01d/1UWCMv+7/Dv1Y16+75Q833JddIzS/ysET
         hkycCeYwc5iaHmnjVFkDSLH6BI5eijKVL+9oyF9mFHEN1DzcVE92wk0Dc4hUnYUYcNIA
         gHcHzpWiGYqvSThdnN3vklQZMPSgAjvfTL4bumkpLAawdqFqmGe60h+ebzSBanGQgmbO
         LpaA==
X-Forwarded-Encrypted: i=1; AJvYcCXebekF0o6I0oJ+m4szGHLcWICDAgpGlLXtjnQj1P+qmefdUJ8JIH2AX4ijVXMheQDmmsYS7eFc+z+Y@vger.kernel.org
X-Gm-Message-State: AOJu0YzLPdAe5WThbuAjVWfls0RmMjfM8Mpky1IHzto875dDa4aVeJ5I
	bM6glqZDJq4nb7rhjzam732skrE/9jf7fYl8GcxFybi41kqt9tyFqDozk7ZCBy3OeQTf31jroO7
	utoCI2n+0CvlAYMklHWAQ6qAa56OhXBgiqgYssdFguPTUPNTClSeEq36LMAyOqNhs
X-Gm-Gg: AY/fxX7jjZ4OvapfF6e6AlIgG6ZuWAQqxvjMi18vtX++GGk91AJSu1+IUf3CtXv/vqq
	tBJ8tIEjIq9OpeFR7XjYXa+/PltcA8SNRzSy5KLGBJiF71lr5oONdg45yJBSn5K/dVIgHqQg82G
	o04S3pXuvn+kMnmKKZhQoFw4Ykjim+RLjU/U+MpEZtJLGDQVgV4+SQ1Fa8B7hTDWv+UC6FREAXG
	rihkrnUERsuJINAI2/N/hmpsg4N/R82IKH/WEk0eIPUnUXykNvV/crVxNz+BueHgwxnOFCv5geH
	/vRdFilCZES11MaeX1AUXZnlz0d7jVMXoa8gZjKYi3Cf3c/OMdreGzHgCQ49xkYNP4DSwzkowVv
	SwYL4AzYTg6DLpHLi2g==
X-Received: by 2002:a05:620a:2912:b0:8c5:310d:3b30 with SMTP id af79cd13be357-8c589b9781amr2336076685a.12.1768903024466;
        Tue, 20 Jan 2026 01:57:04 -0800 (PST)
X-Received: by 2002:a05:620a:2912:b0:8c5:310d:3b30 with SMTP id af79cd13be357-8c589b9781amr2336074985a.12.1768903023976;
        Tue, 20 Jan 2026 01:57:03 -0800 (PST)
Received: from hackbox.lan ([86.121.163.152])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654533cc543sm12697032a12.20.2026.01.20.01.57.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 01:57:03 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 11:56:42 +0200
Subject: [PATCH 3/3] arm64: defconfig: Enable Qualcomm Eliza pinctrl
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260120-eliza-pinctrl-v1-3-b31c3f85a5d5@oss.qualcomm.com>
References: <20260120-eliza-pinctrl-v1-0-b31c3f85a5d5@oss.qualcomm.com>
In-Reply-To: <20260120-eliza-pinctrl-v1-0-b31c3f85a5d5@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=646;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=KKPpwl3PRgiv4NCoWVUTvYsEZb1m0fIotFZUF3K3dbs=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpb1Fp0xt0i3j6+QzxNYzCJgyzMi6VBHs4caazt
 heX5Qjnh06JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaW9RaQAKCRAbX0TJAJUV
 VnwGEACcW8/b4o1Zx4cPGMJbECWHXCA8MnB6ZwvSC+3CPmgp+qeRVWUe4OjhilocpXCINg6kam3
 q8aEkLiUbWjd0bBtl/Knjw+ViMCJ3V6LN8qYtyg8vf56NyANK9MyylyBdZTuKd439LiI8QkwpMX
 ovS9oOy7Hfv+gRIPf/APKuEitrMtwjXnmt34ua2TC/t/YaY/CcQL0jdmZoR6Z543keAu8461xj8
 h2zi/D5W4Lq+eCDwM92LMQ61Lz7a6kFVNUgtr4aKp/UX5Jj/Fx35WExaPFkWlO/TflT+niRQwBE
 JITZNhiEDZSZHZBoo1cEdeFPT18wxvyPCOURc3VzsAB57xQimbmUt5+U79lbzTmYXTQUG0ocK+D
 ztC4FYa4/BTJmvZhv3VKtg9QQxrL4Q8/hUcLYGn5KZ/r3ZEg+Th16O+zoqfCV0J5r3NqhrbXzJu
 wzxFoQM69sUGRor0NTPX+8ukTmFZZ4CX1NDX74Sp/mcf6f+A3RDq+iBlfLcbDs42vMXfSK+C7tT
 Iu1qu5Wiak4o+lPD6s0+cOJm2s0wrNJULeJJiXmITLtmxajfKl/6kNL0kMWjm+17fj4e/TsuxIj
 4ASsWbkrQnqFQHcrPr6g9eFzsUJv74Llq2m31p31279KjXA7ZcgtkEfpZdQTaYJhySd90TvqWtA
 SzSC5Vbyj4fKpxg==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-ORIG-GUID: w3iTd3O9SF1YiZGsogFbvFZrJY4L1M25
X-Proofpoint-GUID: w3iTd3O9SF1YiZGsogFbvFZrJY4L1M25
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDA4MiBTYWx0ZWRfX/TZr5rSV8qwr
 /xEXujB0ebnZt3CWFnjFV7vbJ1tiNTHO2NNsxJ2yQ4jSFF4LBgpBZJP2G5uDLCoRwNaF947Dyyu
 L+kww0XfIaqxoIRI+fDLY92oNyn96HZvzGMMScDuN49pKphSbF5ckEXdjPaKym83lD4owpBqpJ/
 CTnsylwRRx4A0J7uijsReCl4n4mWSYwUz2o2ZI0+ntzkIdZE0XOC33+p929Eo2acAa/LAuD6+Le
 qyy/PREjK+X5WJehaz8viszKINeS7N3oTry240wLP+mU1aRRJVmZT1gZUo+5Zq0F6jnY8GVzceu
 5pUW5iSj58vCN4/sTETGNahM7Coc32eoZcoAb2qMdwtY1sy9gUdibamG1Tb5nNBmgCDnAq0w7Vp
 bNufJQx0DtMXDu3kgve2qD5kqRsC0uI9VE8SV8ijV/p3AJee7VB0ZuVRqqfeGbyOSpLc2ubGBFK
 AE4IVaANhYXEStAvWFw==
X-Authority-Analysis: v=2.4 cv=P6U3RyAu c=1 sm=1 tr=0 ts=696f5171 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=RUlelSpolvTNyr7Sls5SJA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=tDv4L-taMw6S-dqSCEsA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-20_02,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0 impostorscore=0
 phishscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200082

The Qualcomm Eliza SoC needs the pinctrl build-in in order to boot.
So enable it.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 7a6d7e70d383..7c100e51af88 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -647,6 +647,7 @@ CONFIG_PINCTRL_IMX91=y
 CONFIG_PINCTRL_IMX93=y
 CONFIG_PINCTRL_IMX_SCMI=y
 CONFIG_PINCTRL_MSM=y
+CONFIG_PINCTRL_ELIZA=y
 CONFIG_PINCTRL_IPQ5018=y
 CONFIG_PINCTRL_IPQ5332=y
 CONFIG_PINCTRL_IPQ5424=y

-- 
2.48.1



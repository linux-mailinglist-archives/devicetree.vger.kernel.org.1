Return-Path: <devicetree+bounces-245525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B66CB1D47
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 04:51:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 39E2B301B9CE
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 03:51:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A31F26560D;
	Wed, 10 Dec 2025 03:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZGayT+f4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KNiQR3Xk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F44272618
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 03:51:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765338668; cv=none; b=ZnPbqDHbEk84fx5JldMRYCV20F5hWQ3hzgEeqoinLItglDWJYYfnASlIMz+B3hvVlDuMXCBjlKn90A4zM3Fqh3L1MBpKZ/CMSEDa+tUB0egzGH2TgWcr0CPwMX9wFQeozwupaQBqZiorM08xokkPZqrRZSBpxaoc2bdUR+Z69uM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765338668; c=relaxed/simple;
	bh=IZSa2C5cf/lmD5/PYXfwcgzWnKknHmZUC/+I+F8aDuc=;
	h=Message-ID:Date:MIME-Version:To:Cc:From:Subject:Content-Type; b=eoN3czjQmAHiB+xk83pyDxUv5X4TRMruEl/as0QQLWBFx3u9Fz6Fa5njM6NhLeKFUyEybhk5Bhnl+iC1MqDoX52ff+bbcmrIvMunOdoOxp+0HLGuv2QuNIQRO4hOASNpjlj85klyIWY4plahpWwL99cKZ5FUeaorHqn/Ddaz82c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZGayT+f4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KNiQR3Xk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA3LG0P1747623
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 03:51:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=jR3YT7nxD7HTAtvYYgGdHd
	+wjs3G0Ul6NvKLvYosSPU=; b=ZGayT+f4zitpVsItPjuQa5vRptpxBk+V5nyWE7
	ZXsno9ICTNIUjCTHLaMl/wRyY083DwlX5bFJFrjV7sXHyTB8g+u47lZn8Ok4rfyS
	zTC0SOwnbLPUwWwDVd9t4F7DXbyM3WNRwnmEUiw6x8Ag3csl5pimz18VDaO5Hxef
	ZUR9z7VeRSOFANezi4vts7cEmxnbIYBP+6Gk4MLKhb298tndxk6hq7oMqXKzcnxD
	D4WHIwLPN2CiGgwTZfT5Kaj0fAHSfNqyixU0YVU0lauwxd/aRlczvk79+tjHJ9Po
	QAKWwU0wkavYZyv2TVY1uOzcYOPKF2nniIXdMuojHa2JIgvw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axvm692hm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 03:51:03 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b62da7602a0so6767601a12.2
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 19:51:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765338662; x=1765943462; darn=vger.kernel.org;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jR3YT7nxD7HTAtvYYgGdHd+wjs3G0Ul6NvKLvYosSPU=;
        b=KNiQR3XkEVTmiyCFNdN8KDiQAm33679LY9vlVV7lgrpv2uVC5kkV0eKASAM5SsOlUs
         +BJRGufN5jVDEwGdLgOhmGRyooftCZqULKk1mNK28p5uW9rxVAtdfk+T2LF589+11lCi
         qVptKILx+mc1u9tBtVTYAyQUt4F9hVN5KE2kaDLZu35wY7cOW/ixPrNrKL+aPpNudmJ3
         QYqkS6bexguL95TDe/wO9SW9D/qgd9EmevtWw7YM1LCt1RBdWd6olVaeW5rB31hEP5jW
         f93jmBs/97HgUz8L896H8ugUZiHKeS1JTUhVk4iDDxXulBMSuX0DP7r+24vNU2G1vNfj
         FTnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765338662; x=1765943462;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jR3YT7nxD7HTAtvYYgGdHd+wjs3G0Ul6NvKLvYosSPU=;
        b=DPHdCPhzlBVbqsAMyr0YjGfvkpQUI6ESXR44rHPXLDGw/LmMufB0wj0IGvU2SY7rbi
         UjuPxR2Kx6txRX5k1Y712ouAZv1Wm0Pjv+Mpa7Ymgx0Y7y2d9ww1LCIkeZu8Bk/1Vfs3
         gtidVBe9NFdD/Q2agMvx54gBtxLmNP9XsfPoYEkvH7NrFk1anGRVA4lwRoCdXo4ZQQ+O
         Ofqu1FroKWF+AaS3VcFiXncpZDktTQAvKDCQrKlG/ZAhaSG21hRTur9QhSA07kpjb6hU
         boSt+842IqXm7tKpbZ8IeX4kTZsd8qLJuizbS+M+6i6r3OEejEDf+7R325tIj0vG85RB
         rrZA==
X-Forwarded-Encrypted: i=1; AJvYcCUB92IfetXDG1xCyiF1rxTnUElInJJmZIQlxNDQarU22DPiNgvq3HPrNs0/cbWMol+XaFwU+OKm4owj@vger.kernel.org
X-Gm-Message-State: AOJu0Yynk8Cn5e5c05avCH6o/+THTUXhs/qM5JpPEK+JvFem2j5TA/Sl
	1O++VenvIrBxSrYx2gIHZ321b+04eZ5wEqMPM2A5S3Jwog2S0GoZVU++qPsL5hzfwucARxk55J3
	8T/8LeJ9fHlT1vFlrUBU/ZVc4qFf9w97akBj20ozrQ6AaOXDHOKrdSQxzDXrq9Oos
X-Gm-Gg: AY/fxX6ZkNIiBFHUgD4nWUJu1JENjRyRR9kfOS8iEfVZqgYN7pKbTF8SCtS6gRhrKnV
	0dNgsxcdenJ6E+4BuHIoEYeaFnRKvA4IwurjQLYRyndB9O2/nBVnGEaTex3XStQM4d+XPV79qd+
	MEmdTwFp3+Ti0bMLCcXH644NGEE2IrWPv9FmTRzVPRK79xqQzwiRhA15KFAm/FqJP35zgksC2Q7
	9qYqF/uykceWccpzjIkK4NoTkwucheJZKsRhRU3qVgGSGXK1qFPPTZw5SUpZFF4FM62eWIl/o7M
	y/ilGVS49S+ifjndRHzyRL1Un8IOFUVcjbPaVCzmBReyU5C7ziTRGOghQGke1GbZC5fmM/nLVzH
	NQpuDhk6eP7ys+ZcDQ99LVQWkLVdLj3rlpmico2YD3nAOFF6jfA==
X-Received: by 2002:a05:693c:2b10:b0:2ab:ca55:89ac with SMTP id 5a478bee46e88-2ac05655445mr947137eec.43.1765338662001;
        Tue, 09 Dec 2025 19:51:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHji59tJPZjZ2vk/UzP1yy+YhxMdP33Bi7ys9zJE1rd35UIIyvczca1LisV2Qg1pDfLoLhUJg==
X-Received: by 2002:a05:693c:2b10:b0:2ab:ca55:89ac with SMTP id 5a478bee46e88-2ac05655445mr947126eec.43.1765338661499;
        Tue, 09 Dec 2025 19:51:01 -0800 (PST)
Received: from [10.47.204.141] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2aba822b615sm47481564eec.0.2025.12.09.19.51.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Dec 2025 19:51:01 -0800 (PST)
Message-ID: <b1a9a391-1262-4eb0-987e-60bb34bdeb29@oss.qualcomm.com>
Date: Wed, 10 Dec 2025 11:51:00 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: apw@canonical.com, joe@perches.com, devicetree@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        konradybcio@kernel.org, tingweiz@qti.qualcomm.com,
        yijiyang@qti.qualcomm.com
Cc: ath12k@lists.infradead.org, yintang@qti.qualcomm.com
From: Yingying Tang <yingying.tang@oss.qualcomm.com>
Subject: Checkpatch warning of qcom ath12k wifi node
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: C1aYFSVxKbFM6VR-tj-MCiKMg6ZP-W1V
X-Proofpoint-ORIG-GUID: C1aYFSVxKbFM6VR-tj-MCiKMg6ZP-W1V
X-Authority-Analysis: v=2.4 cv=Ztbg6t7G c=1 sm=1 tr=0 ts=6938ee27 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=x8NPreKCXEkmtoi0VuwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDAzMiBTYWx0ZWRfXzoYV6ZzkBqL+
 Er6CADHe+R6t+0GU6LC7EU94IkdxFmw8osDWmH8LIlM7W6zfsM12nlchSXcCz8MRv7+sGJU6538
 cayYbuD98mUq736Dxe9hXf2rVin9Yc68dXzXKHm92zaTGuIcsJHxTc3mgi9Bd+9U3XHmiFod27w
 b7CPX317o/EpHlVP7LySgSSFDoTCMXJzBz1KRoKw+XAyQchFh78ti/m0dwUlXKtVM6P1JJ+RnZ3
 Tfjm+exK5KwSeuonO1Ur+VivAoGj0NOk7GQhqbdjYsmIjbJjGDMJ4IK54vNKxasfn7Ua1HcFS7/
 ZkKwaENDY3ECxlU1zkmJQrYQL1iBe6hMeJyxHm85YnBea7KYEf0mdRLKU5sVRniPTGImm6y6TSC
 q4ZVWba7LVItFpQl2+CtJHjv727Y1g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 impostorscore=0 suspectscore=0 spamscore=0
 malwarescore=0 priorityscore=1501 bulkscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100032

Hi Andy and Joe,


I met a Checkpatch warning issue for ath12k wifi node:


./scripts/checkpatch.pl arch/arm64/boot/dts/qcom/sm8750-mtp.dts
WARNING: DT compatible string vendor "pci17cb" appears un-documented -- 
check ./Documentation/devicetree/bindings/vendor-prefixes.yaml#1026: 
FILE: arch/arm64/boot/dts/qcom/sm8750-mtp.dts:1026:
+               compatible = "pci17cb,1107";

total: 0 errors, 1 warnings, 1275 lines checked

NOTE: For some of the reported defects, checkpatch may be able to
       mechanically convert to the typical style using --fix or 
--fix-inplace.

arch/arm64/boot/dts/qcom/sm8750-mtp.dts has style problems, please review.

NOTE: If any of the errors are false positives, please report
       them to the maintainer, see CHECKPATCH in MAINTAINERS.


All dts files which contain (compatible = "pci17cb,1107"; ) met this 
warning. But in fact this DT compatible string is already defined in  
devicetree/bindings/net/wireless/qcom,ath12k.yaml

I raised a new change review 
https://lore.kernel.org/all/20251210032817.1264850-1-yingying.tang@oss.qualcomm.com, 
it also met this issue.


Could please help to resolve this issue, thanks very much



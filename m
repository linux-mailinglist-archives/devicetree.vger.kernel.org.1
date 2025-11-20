Return-Path: <devicetree+bounces-240667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D0646C73E93
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 13:12:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 190F44E5B75
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 12:12:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 479C232E733;
	Thu, 20 Nov 2025 12:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XTREXln+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YppdEdp7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C46A32BDC1D
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 12:12:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763640740; cv=none; b=VVIt81RjsW2MeCZL4c9e86kA/HdpxhoQfSS/IIjTfBmjD/27R1xu5vY1kZEVuT8fcxSV++1CPwgabCFk99pP6HePY9ULKj0jputAj2LEVS84TtP4wYXhyUSKMm0DehmAlWPq0gKy/jD0ati0RwsuXJUeZohd2UG3++WLhreDfZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763640740; c=relaxed/simple;
	bh=1Nz10t/7oalmE66wkAYRWXCKS5b2nIrcrTL24CtxGJc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LEQRyZh7e2u4Zn3+z+003RpaJIWG2nz97gbQquGYBhkfRN2HBkFMnO/8bvwMcmuygPM53ba26E7sZByHVH3w20vvcmVKNZrr1vIMfcG9IDxaCCsSiERW1yWyADgEM37v5KxdSuqr1m7ufx96NqBKzyK3dr40TXAkXOtHntoDZ0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XTREXln+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YppdEdp7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AKB9WhV816819
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 12:12:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1Nz10t/7oalmE66wkAYRWXCKS5b2nIrcrTL24CtxGJc=; b=XTREXln+mSArhYEL
	Kzn4uO+Hg1zGB9avAW8fpFKf9KaWD8IZYNwE6atb5jRTE7+LGwticFh/hSniFrFf
	OLnjv7yi0Xx1lbMhWHzQ05otuJSl/Pn/uOgRIcgpYIso6QANhWIC8+oQZloi36PM
	EFgF3sDLp4EPkqQTW1QjoCNLxKSrKSxpAaDGeV/Ate7+oHkxn+F9pGbm2Qhez3Ro
	Ec8h90ITveTOPfSaYe/rL+rgSp6G/WWQy5XSY8qm5zhQOl5U3ikylUFqKRmMNmOV
	LVLO/U6HZ3lGMg12cZAu1t0ZhACfSFHbA0j6fTUwOCARwkzuVwGbjnBV3U/mJTc2
	Df018A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aj1va85wk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 12:12:17 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4edace8bc76so2363991cf.3
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 04:12:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763640737; x=1764245537; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1Nz10t/7oalmE66wkAYRWXCKS5b2nIrcrTL24CtxGJc=;
        b=YppdEdp7x37M4YgPSd8T9RFNM3ptlol+MaGSBuSMfrCn5Zp3Gt9xQjDU/3UueAafA9
         WEG3/hFdzVp1VnEUV54qBhziXGJLivqSiHmlMJeOpsayHV6sgmwmfH5dL2q5x9b+xTcR
         PXbtLHQap+ExwOkMUnFiMQuljE9tk6XJ/FkV+0S1ofd4Q3kJ99i25oFVrDIk8FyotpFy
         YRRgeFlJlvpGhvLj/Eu4iXRWU77fBVLomn5xKAE2obYWOfXPglZtQBPEKngHwJRS114+
         P4PPFS2a0sTom3ybRmPGVG8pp2CtzFjbGjgmpl5B4wA1ycid6viWiBvwcaqUxEKKGfuH
         hjuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763640737; x=1764245537;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Nz10t/7oalmE66wkAYRWXCKS5b2nIrcrTL24CtxGJc=;
        b=CLzrAuge3xISP2BUVeYR5ZnUavpBBwjWo9nqfK1A78M0bitIBLnXK7A7V4lhl+9Yk7
         /T3hmAoxrWCePfdDIbx4LDiVoH5v/1MoykDy2aQLvJ80q+5hjFc0qbFBJ8Q+COfo6NsT
         arQJPFOXtj3ByvMRfkpeVXhz0tZuja9dwWhKSv59RvZTfcX7NmwTtUc5peHoMRtUF5/L
         L2grCtHb+tKb48wbto2wlXsSjt2k6LeXj97kSKTG0w1M5v2cwBBZCo9jECKgn4rI4La0
         fCxT9LPBm15WqrkBCAo7OK934Qag2MyvJ6dh8OVHC48iOJ9sIbUUzyjgKvkYbhpWWcx9
         6u+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUiG1q50aNcF8fiJCndnKoXq7eb6JDc80jLWsRJRwArKIFfP9L1JSEtPXXz0C0gQoGicrg0NLcirson@vger.kernel.org
X-Gm-Message-State: AOJu0YzAAVEvr0L1V6ohKSCz1g3KaYC+c1LypYC/q12fdp8Tv57y7+0g
	ARnSw+FgOO1/+7DLLJITOTjFZRaHuwByfsVm/ZvU3Kk7l+yfc4HeJWJgcF2Uk3n7DUYlxn/+WtI
	D0N6QmqNkyj0lJPhKtybRdrO1HHTbDoRJifSs5xqLLzdlE+8utGhpM0zKoIL51Cuq
X-Gm-Gg: ASbGncuOGk5Zq+cf+c8yDDYGtIZrigx70JB7H0JAKp9PDTveHQ2M3d5jKtOv9VZy7jr
	LWPDTzDc2fkvzECJ11HEqgENI2Z366kg39x7TThglGmKExy4OkUL0gBMgcJMFT/tldoFlgQ/50d
	4/DdxK42OBRlDxsjQx6DnErQ/Zlw/GtPhbi6jglIUqpN/Zw0k0EqMAlk/Q/n/tWtmaae0/rmEhP
	gpRGHf2Z+VkL+vNJlmEyX7CZujTMbsWBtXvUSZKwr++CK8h+mKrYU2R/AFMjgkOF+JZMumhbM9P
	FkbJOj1EsBEz9mO5ft7Pm5TDUUksGY7tv+dhEZqhEKGu8aWescoJFaE6GXl5YqDQF6Hc/olY4fb
	wQME0RekhcH9uuNqyxbpV70uKNyS+caskLOaESMzjJaHZdhxwcYnR7dOMmG3d306/k5A=
X-Received: by 2002:ac8:5809:0:b0:4e6:eaff:3a4b with SMTP id d75a77b69052e-4ee4946ddb9mr26729391cf.4.1763640737085;
        Thu, 20 Nov 2025 04:12:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFJIkAJMIb87XqU3/DNYgnO1nkc5omHVlsyY6ht8wbgHtHomIDDdW2jKr7zv8ydU/CGrQlzgw==
X-Received: by 2002:ac8:5809:0:b0:4e6:eaff:3a4b with SMTP id d75a77b69052e-4ee4946ddb9mr26729081cf.4.1763640736644;
        Thu, 20 Nov 2025 04:12:16 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654ff3fc0sm197643866b.46.2025.11.20.04.12.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Nov 2025 04:12:16 -0800 (PST)
Message-ID: <adb24ecc-a4c8-454c-8fdf-09617bb8e660@oss.qualcomm.com>
Date: Thu, 20 Nov 2025 13:12:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: defconfig: Enable Lontium LT8713sx driver
To: Vishnu Saini <vishnu.saini@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Vishnu Saini <vishsain@qti.qualcomm.com>,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
References: <20251120-lt8713sx-bridge-linux-for-next-v1-0-2246fc5fb490@qti.qualcomm.com>
 <20251120-lt8713sx-bridge-linux-for-next-v1-2-2246fc5fb490@qti.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251120-lt8713sx-bridge-linux-for-next-v1-2-2246fc5fb490@qti.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIwMDA3NyBTYWx0ZWRfX2BhQjXZDgYL0
 QYJUEKHhYPwKzMuOgXX2BSM8NetSJOW8JzBpyGkGwgHKNbIvqzIeyn4E5Mr+wPQ84qVW99sOlD5
 hcAkN48hHwEnRiF9u1Mt60VEbRVXudz05h6sK1Hkz95N/MommZQsbZ3I5UD1irao7xJhepaNBA9
 IMUa3J7ZN2UCy6dF57GWfAVjjRrsF10WwpSBq3wvu7ndBzwt9ZU+hdvsLrhv4GSnam70jdT+6qK
 35RFtu8wcwzcwT9IdO/rSPMunrbf3YCw6r2XqVnh7XNVa2oMCBkOYuR264lAh+6dsmqB8gbrrTF
 VpxhPLaNfD5wPUA4IddOjFwaZcG/plddcGEKe7AbYCfY55aRA+PW4HrE0ukOHCMoJEb/seonIF+
 H00S+eqIqa4QXw9Ht6Fgjzh/2q4Miw==
X-Authority-Analysis: v=2.4 cv=Vpwuwu2n c=1 sm=1 tr=0 ts=691f05a1 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=k2smkN0swJPmjpsklw8A:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: qqGigNMTlNjZq8shc2HH4YbEtFykkFpQ
X-Proofpoint-GUID: qqGigNMTlNjZq8shc2HH4YbEtFykkFpQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-20_04,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 malwarescore=0 spamscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511200077

On 11/20/25 11:58 AM, Vishnu Saini wrote:
> Lontium LT8713sx DP bridge hub can be found in monaco-evk

"..can be found on a Qualcomm Monaco EVK board" would be neater,
otherwise it's not obvious (and this file is of interest to folks
who work on non-Qualcomm boards too)

Konrad


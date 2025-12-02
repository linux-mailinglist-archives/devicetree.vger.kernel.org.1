Return-Path: <devicetree+bounces-243708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E70C9B878
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 13:56:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 696D1343BD0
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 12:56:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CBFF313E22;
	Tue,  2 Dec 2025 12:55:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dTfs+Gjc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZIOsHLP4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3713F313554
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 12:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764680152; cv=none; b=iG8WONHpxzHeDEaT+JKjedVBRWQJu58uLzTSuajnRtUt4RgYyseeWXWjo/2ZBmVmvuoMFwyJHM/VYC3pxQ9zxhS8tQPj9yVZY8Gfkx9iUw3NnrViN4FFDMn5NjZA9Y7/3PCrxPMDoTAsBNaE4wWp/FyT4qAvA392kJeVwyD4WCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764680152; c=relaxed/simple;
	bh=c99VfiJziIa4p5oGCuYMvysD45YMsYYhzKzywiDorKk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u44bGppK14lmOeu87HZm6RSt6TvSIbrIrzSloIxnvQ+5WpgfBl8Y0JCqvUxXNhmkt6xX6fcs0t9ao8hJCpw54IzhL1WnnhGuhYgJvOBdU9MEvWJCt90AXtt1gNmGOXlDfkHb+kmLL1DKShwjF6gN0MwTumtApR04umcj9FAk22A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dTfs+Gjc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZIOsHLP4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B2673Np2821194
	for <devicetree@vger.kernel.org>; Tue, 2 Dec 2025 12:55:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jPs09PlsZI8fe/FIRCcZ/95GybauVOjun80wvJ9Xx1I=; b=dTfs+Gjc3A3PKdA1
	3u7vgi99q/oxlTAdzbqjlKAJYmvZWNZLeGRDe4fPJgp/mBzaGi8A8x6TgzI/2p/g
	hWIOP7AQQJziisAEhyRCazkJjyzOuXNtRKrsisZg/ACg3FDfxODyzxxGukH0rB1V
	ri4uL6yw9GEBzDR2LkinlR48dnUx0gNNi6E7H18+yeP5BlnAEF8+u8Ppzat0Enwg
	IiNxKM55mSRRxOX3My555Ozp+mIB7mENqdfsLMxItoqTfbC5Cgfqgn6rRRw7Wpc6
	IvvavbvjZsO0NSbi0uati/iFMUsqAGtyIGicNkYGaJRO4oaJ3cTnsy+3Ap1opw+M
	dB0Mlw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4astjgh6yu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 12:55:44 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b21f4ce5a6so65727785a.3
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 04:55:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764680144; x=1765284944; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jPs09PlsZI8fe/FIRCcZ/95GybauVOjun80wvJ9Xx1I=;
        b=ZIOsHLP4TeXJoaL7XMfBGVtsvicyDJZa8njZTQplpaQsluOB21AO6sSgHlkEwIMUbi
         tke//5cXWgY2Wfn3/wpP1XXIDpnzr4LyxvuqI4lOpG9jy4y08fzz/tW9tKeKC56r6npE
         ibeFfkTHjLZiEsCoF899AWR+Z0bN+YQdjOPbe/CaXjXoVd+Qx4xWv99aVoBFynfZywHd
         qOPCAOGZOIIX8bQib41SKPkroWqOMCX/+kbSey78lwerpuY5pTazhzS9t/+lN17g/7/i
         M4jKOysoSMxGo5JRwemmfhDa6OBvIpX7c3yB+OEGO3OXcSOMsbTZQCJ0+b5uYlaZBqoj
         lO6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764680144; x=1765284944;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jPs09PlsZI8fe/FIRCcZ/95GybauVOjun80wvJ9Xx1I=;
        b=RtHeVNGxoAtLgSEffGwY9bgJgK6DLYa0KyjT1gmj9iRn8FVAV7QmIpVrmTvjSpp+JH
         OnDzpWSM4EGLVa62lop1KdFCn34d9x3dzja4wipB8XJ1bPuH9w/6zFElZ28Tkyf9bb/V
         FNPKuyGYMo+rMD8n8X3F4WtPTbBBgLRKn9CTI4d3BqssIroH33Vdl0JMwM701tIrqWgN
         zn50LZNXGe9a3k5SF/lVibUh+5hbGJOIXk/N1VwmJIPZweZ9AsRw2FEcokLp6Bra54va
         DuC+mzoCRZrbmUToBAwL7UGw/TOK9N0h4QT+PBHfmzv708hqvKMBYbvwtkYdW3xqHNMI
         BIJg==
X-Forwarded-Encrypted: i=1; AJvYcCV+0+XpVLlbleRSsxSDCMa9MR7OcIhKmIrgcBtc4MM7a9tg2Yb+iiZhUlVomzKhe4OoRPAunhqpGYfg@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4bTS2iy1SxcYVnTVA4i0kODWQzQgVfctAVo8tkYSo9K//7mK8
	z9gbQm57xAfE0yrnKbXG9mE1Zl0sc1u3IS7Al/T4xfykJWPtl0Yh4eTEDx13r4I0jzEGOrbYg0s
	rdQlRduWTs6WzqWMjHVtWUuYK4Zd670Tjxiq/x2vJu+CYiq4RGEOD+WoQj0Vu0i/+
X-Gm-Gg: ASbGncsWsrEzEBTEdbvn4xasZpbcfU1JPXQVW0M9SH93ib/gY/4623XHEIEAQMpqv3H
	p9G2+uB37y9oG66Dd+aE5fzwwE64aqpPswmonAC/dUNb418PSghpQJgCi76Z0Kn1BFpeiPpbMVg
	kWz/Nzmorr9zcn853XfdG5s2a3CM1xVt4l4+CVuUXmCXlVMqVydnv6kyxrvVvdGlzG3qjqHD7Ai
	Ly+hHZdWNuQm0VtpCIbLnXwumXczc7JnxViDHeV3z8NcsDjWHyd+75exRW9ud8z3mpbZ7v9Zm8j
	0rup5GJHiWbODVUvO1c1eiVF0SK9s7gpmiR6dPkQV/JYeHod3vZjBmsTCHF4dtmPr1pnaYE7Gcf
	EfZZwC7GyaMxmwZiqr3yEqteWAyxVwGxqCi/4lQdFwkqsbjPNJDcN8QkCEcaNHqy6KA==
X-Received: by 2002:a05:620a:1aa1:b0:8b2:ddd3:adae with SMTP id af79cd13be357-8b33cfc6cd2mr4243980785a.0.1764680143897;
        Tue, 02 Dec 2025 04:55:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG6t5tAlhnUSrzpVsQ4YaBwDMUp5ld41UwU7dts+koLAB5uAJi/EM37lxZiwbVRa41NR97csw==
X-Received: by 2002:a05:620a:1aa1:b0:8b2:ddd3:adae with SMTP id af79cd13be357-8b33cfc6cd2mr4243976685a.0.1764680143341;
        Tue, 02 Dec 2025 04:55:43 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79cbc1f1d5sm33115466b.63.2025.12.02.04.55.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Dec 2025 04:55:42 -0800 (PST)
Message-ID: <ed0bdcae-6fa1-48a4-9618-e0ac09097f9e@oss.qualcomm.com>
Date: Tue, 2 Dec 2025 13:55:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sdm845-tama: Keep labibb on, so kernel
 can disable it
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251202-tama-labibb-v1-1-f8f3fda53d1d@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251202-tama-labibb-v1-1-f8f3fda53d1d@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: BAC_3ck55s2xZvjBLQ3MGZdpU5PqUnbJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAyMDEwNCBTYWx0ZWRfX8zXgL+9IqNYX
 uvjo9EAUTMTifA7Ou5Sx9t/UzDFx83nbFKtJ0zTuxVLBXTVssrSF3A/Rzow7hAAMwB/sI3jDft6
 Jk6df/zX4bPlVa9R2r++atBecEvffNYr2mrE4kNUpKsrA2BhFySIZFBAJ+rcUfwJZUYbcZJGTlc
 AF27XLiURVG+52vriJcrP4CpsfwLUF5x0ieQUCLj2Pbv1s+2w1qvg+olUgGF/pfhnzwu5fijsoD
 xijKs/PmKfIsKlwsVU7X9AADBpqezCellENIQBPIcFyFOdCRo/QMyQ5QOUVuYOxMDVeaTF7gb+P
 bX6xrQln7dOwN0ij70Fv2o/DR2fG0ufu4GWM2LL2WRBEvuf6vxuhXovTh9q0NccvwfypeV8Cbxs
 v9DJscuLk2D9e9K78PBkb7lQHTIEmg==
X-Proofpoint-GUID: BAC_3ck55s2xZvjBLQ3MGZdpU5PqUnbJ
X-Authority-Analysis: v=2.4 cv=EbfFgfmC c=1 sm=1 tr=0 ts=692ee1d1 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=iaR-HtB-u2oQH_P8YIwA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-01_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 phishscore=0 impostorscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512020104

On 12/2/25 12:31 PM, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> In case if they were enabled by the bootloader as part of some
> reference/common routine and left hanging. Linux will switch them off if
> they're never used.
> 
> Discussion about it can be found here:
>   https://lore.kernel.org/all/20251130-oneplus-labibb-v1-1-bb3653e43120@ixit.cz/
> 
> Fixes: 5dcc6587fde2 ("arm64: dts: qcom: sdm845-tama: Add display nodes")
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---

Perhaps "keeping it on" is a little bit unfortunate in that the wording
collides with keeping the regulator's output enabled, but anyway

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


Return-Path: <devicetree+bounces-241937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 8113CC848A0
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 11:45:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 05C7634E4B7
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 10:45:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4055931282E;
	Tue, 25 Nov 2025 10:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ObItG198";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PPmaF2Tz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 754843126C3
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 10:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764067529; cv=none; b=G+u2nFs/+pmkKRbLBbQB3uKkba2pIRR87/qdOgkNRuHKYW6CWKSiiHLD6mDA0f1TsxW3z7qhAKHYlD4kpHtbVZtN2HmFUX2vOHIIZsjhWR383R7T6U3w7ORA6UYq8VITiD/R6yzagkI2/gqaAQWKdy+JcpMa6O+9sXdd1wOnUJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764067529; c=relaxed/simple;
	bh=VCq+O1s7382hys/B9SmoYilKyWtXfu1me1mpBF+J/kU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hvTPfhRBBOSU+uPUT6nBD8bw881bw7c1o8yCn63G+qHmFCWG5v/wcO92ZtDnYgNXEyUnCXba+ePvz9ywL64152ASLv6InU0EGEWS1FVZsdRICtbyC3H/H/whJ/P2u27unnxTj+o721z5N+h59TlRj+pUQSj2aaQh2iqloAQRl+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ObItG198; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PPmaF2Tz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AP9xLEr2650901
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 10:45:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wn1SxpEKcwo4JCd8zTQuVpo+QZZl6aFrR2Lf4TtVpMM=; b=ObItG198kJWPWmj5
	sU0sxiBjog/KrpBUW0Sj3MlbNsfbng9b2MTBkU5UO3DfzmCl7E8xPYArXmAslufX
	gXajqOD+kQ/4dsg3n0uqhhFxwelkLm81ouH8rMRH4golMmBPpK6/SQGBqXmbdrjQ
	0sHefqgf08E5uvdhsLovRlZDw1/nyd2NoWM5L7Uc3s3NwNPiCc9q3O0aBg58MVbt
	DHCPDZz6ee4t/dpk87BeMPvqf0CGzEaI9XwlrMkZBNmtbX2sCXPGXr+o7q74a878
	fvrAj1NOn4+5DsxGxrV1hFbT5TN6Pe+kI89UP1X6KbhS23Z3YHQtDwFC0/Qzm7Wo
	8QH4VQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4anaabr3x5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 10:45:26 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b222111167so142983285a.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 02:45:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764067525; x=1764672325; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wn1SxpEKcwo4JCd8zTQuVpo+QZZl6aFrR2Lf4TtVpMM=;
        b=PPmaF2TzFRU/IqLx1GcTZ8onSpL0ZaN4G2ai22l5ZMLie9lzm/g+WL+1BlHSe2Oect
         ybNUwW6bkdQ0mXAZRtkFPc12Q04jMPiEvqSgGzxXKm4d0+Hc6DW5NVppKNKhTV2dvTa5
         RAzA6AY/UudmfHCJjQGJf2WPXRrB2uyBMVSoTy4bGVy/X55nJBsdevMjBDqsUfh/ySxk
         HzQ7Nfaw5t438/Oxm6L0SNBcpmKgJsbpWfaJuEYTa3G+gtaJjmsRVzIMjkcsJpi/GjDl
         WAbK+7uDvWmc6XNCBjpdkdzAYzZuTdayqQHnltyX2dZZTs29SyhW6eMWspVBqSrAaKWR
         gmcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764067525; x=1764672325;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wn1SxpEKcwo4JCd8zTQuVpo+QZZl6aFrR2Lf4TtVpMM=;
        b=agVjNIUFnAeaTCMQ2iDhPKqKAQ2YDepK19XO+ZDXCrhW63EmeSj0jXOM++URi6OEnF
         BURQlXFSflplrxCTACGoLa4V507GVNouHZiiuxR/uGsLeT28sCKoaFdjLm+jfx5cpD0A
         RNvK6Qnvmkj5y/mMVaH7dlWKzUI/dOdUZwfe6dySPPEU1ajprQgpElgwzvoGonWgtnEf
         s/E83S9voMkE3eJGKuRVdEmWKGiCLEcJzkFlKbLdSgVMlLuGQfTGqVrVViAJQeHJD4oW
         r07DGZc0ciLrKHSmUFK0mxq1/TevDedSm62nOyQ0DS908gSs4yH/YTLwvHFA2+o4ArTT
         riWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUa96sF4dYArHByUyvEzZhngv4x5yaMKc5z1TB1BVfeO9mQUmb2+uot1n6kGwu5lDrrxNFxZggW5zju@vger.kernel.org
X-Gm-Message-State: AOJu0YzMfCdeUxlpdBZn/TI6rcgiAXkrnhc87cdhiRZB5lfRpoBfxXuz
	RB5JzAzym6n6PxwDDVrR/j4yKx76Fl2L9ldiw1s2b9fFilVIkUjMpg2DLl5UY/448NKFe36TqYz
	aLez9kMyM+l+OIeTS3Pi/zn+3do0i15u4Fwa+jDOt1dj5h+uStNQvDJ3ZGLUpkOAb
X-Gm-Gg: ASbGnctLt1rxzlEhLNc7jV3SgbchqdbshOo4GNsSLZUA7pzrsu78pgQNK9wfvfAdTFS
	2WYnTym/jvg7jvlCq+lbOh6ucaOCGalBWm/tq6H/Ls3mLIoRuM+yNi++89Ielgtvy6QpFqDuawd
	jOQ7oGGLJISiGCbDXO/t3SAIYkZBfZwNzNA6GdAfqM0Grd46EajQJsWvjHAsFPSSqBVrr9hrBBr
	m/LnV/c2JZoQfnwXzPEXn4YWzJO1AKEr29Rw++IWUmDCxyS9uTqBzHT3b7WVArTGzraNGP/chYu
	Tkh6yF9alDnqZg+FWlblj8WIgQqNSPTrizC+AausIy08Xi1Ojnpnjjlf8AXTA5FUQgfmLNaWBRa
	rLbEjyipExlR27sQRDDxfcxagXaUXTdSn1J+DfwlB3cPGWuO3QlHzL/AapWAXHI5jln8=
X-Received: by 2002:ac8:5dd0:0:b0:4ee:1f0c:c1aa with SMTP id d75a77b69052e-4ee5b74c2b0mr137857191cf.7.1764067525571;
        Tue, 25 Nov 2025 02:45:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFza8C8YbcTHUSzQ9MsUfOfDbV7bpXNGIVx3J9Vz5JDGtYEYciUtpiYbEpD4fsxLqoXIPyqnA==
X-Received: by 2002:ac8:5dd0:0:b0:4ee:1f0c:c1aa with SMTP id d75a77b69052e-4ee5b74c2b0mr137856991cf.7.1764067525104;
        Tue, 25 Nov 2025 02:45:25 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654ff3c40sm1560776066b.47.2025.11.25.02.45.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 02:45:24 -0800 (PST)
Message-ID: <d3318386-2646-4f1c-ab4b-6ae3bc71e9bb@oss.qualcomm.com>
Date: Tue, 25 Nov 2025 11:45:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/6] iio: accel: Prevent NULL pointer dereference in
 interrupt setup
To: guptarud@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        David Lechner <dlechner@baylibre.com>,
        =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>,
        Andy Shevchenko <andy@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org
References: <20251124-expressatt_nfc_accel_magn_light-v4-0-9c5686ad67e2@gmail.com>
 <20251124-expressatt_nfc_accel_magn_light-v4-5-9c5686ad67e2@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251124-expressatt_nfc_accel_magn_light-v4-5-9c5686ad67e2@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Vd36/Vp9 c=1 sm=1 tr=0 ts=692588c6 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=W7vXZdNd1IZ0taGBaDcA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: fsmy6arrcJJ9lqGTz9w_JeLjYCqZqe0K
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI1MDA4OCBTYWx0ZWRfX6Ulw56X7Qarw
 ifCdwYa+Q2gYttoN9vE3Gtkr0wyapUkptDGru2di/E3XfDasuhL25BEfnVxuw00hvBjh4BPeEQR
 K8Gqi5Wl2GLTttEtcQ21DIEXMJKop/pWaNVc7TRrh6v8epU1Ubp5XRNcj4IRLU3VZUj7h3w6Ool
 AXUt337dICApX35ww+3hxPeZze9FCsABbmyE7a9z4DdO/sK1aRFSh+Fg70VZZmJ/Vngze5BxVGe
 VLyunZZCSdSONiv8zl+gfaeJN93qVSj+KU1rgda2tDaR8uZ5qc+m+N9R2fBg0yBNwaKirAJG6wO
 dmwLzSpTD+rdjcg+dUKmkjP1UgT6IrZBzkVopcII+0tW8rWTdXyq3qDTDY3nWLBtA1nSUxSRLtC
 GfzQ6l91y1lSyP8JloI8V2xt/S+DFg==
X-Proofpoint-GUID: fsmy6arrcJJ9lqGTz9w_JeLjYCqZqe0K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-24_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 impostorscore=0 adultscore=0 phishscore=0
 suspectscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511250088

On 11/25/25 12:35 AM, Rudraksha Gupta via B4 Relay wrote:
> From: Rudraksha Gupta <guptarud@gmail.com>
> 
> The bmc150_accel_set_interrupt() function assumes that the interrupt
> info is provided. However, when no IRQ is provided, the info pointer
> remains NULL, leading to a kernel oops:

Hm, are you sure your device really doesn't have a pin connected to
the IC's interrupt line?

Konrad


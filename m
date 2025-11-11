Return-Path: <devicetree+bounces-237182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BB6C4DB99
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 13:31:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 999993A2BAC
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 12:27:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5963E358D25;
	Tue, 11 Nov 2025 12:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CJRMpH5I";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jRwbNMul"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437443587D2
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 12:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762864031; cv=none; b=PR9i5LgpcsE+eOYTi6uuBQVACqJrhyc3apCYoeubWE4PRLccoCLs5e2V6Ch2OGMXTd3aBEppop8WbJdat5QHlUaCo2PDWRCBYm+Uw0Gkb/fzIB2pn8K4LTGtcq6NAIlzRsnb6nVd+g9DZ6LZU8uVmfRI2UAHQXE9Oe5HkBLQLqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762864031; c=relaxed/simple;
	bh=Mmwf+SgYpOW49FVFFebTwW//qfzMVBV3emHZpkF5kxk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s0yXwKCHmeDQqu1WKINvgLgNhYinKjIBAJdJibnJOWebyVbGuuxnkgiWMG0fqoIfPQQhy7Qk9YRls5jVBTq3oTRVEgLcEXFhlV9IfrOAHlIOU++9VQ9n/XK/iRUOos8XR1OK1XxpFkekvKIM++kclTyocDa5COhHUxijfYiLPKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CJRMpH5I; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jRwbNMul; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ABBGd8G2027969
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 12:27:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	a8agYfx223SVNEnTOzoADqgO7cW6tHMwJWHrHwFhic4=; b=CJRMpH5In5LvwALq
	R5XGoT5CXnFWLVkURWj6M0kA7W+/UV8+0N4vTJUrE5WSOkZcriufYLWh7EoXHiDx
	baEzIKXElZtY0Zun2YSUg5afo1ClZ1NPz2j6c28fiWLintntu5miBzsynjYQijkk
	HlOj9H/8tHK6QRjASQ2RdrdgePKxMccdqj5OiX6tfOhT6TKdCbEuPVmYQAcByf97
	FYevllhZk2Z8AZdRse643cO7y+6UboDBEK6qsewRqAu68F/iZSy4AO5dW7X2p3Sk
	0PRH0f5Ch3kslNASd42c/6x9vHlcIjFYpBbwgpAAq0AKZs2+6+tXXoQwdjzkO2QJ
	CAU2tQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abxqw172p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 12:27:08 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed6466f2baso114082091cf.0
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 04:27:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762864027; x=1763468827; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=a8agYfx223SVNEnTOzoADqgO7cW6tHMwJWHrHwFhic4=;
        b=jRwbNMulOAL3RmTvmaQt5u6JydCxPco9YKz/XV0LVpDfLdNXEiiA7o6254FrrnNlb5
         GD5xZHXnqK502B9L/MgDlFjhtZMQvNcgHD2rWz5hXXDmbBJLVKq0pklVRvfvgG0emZwv
         +eGpYSzpbj1uhFp+CjRcqVq9ScP+i4RnTZS1COY92KafwXJP981TMz5Q1NwlJpAY/yQo
         2E8UJ6Vnjq+FHcCjnNK8e69VkQDCKWUNVaElMT0f6WJZT4xb4d3Y5vJQibmykp9+EbiK
         nvGQiNgBxL3anzOzdOsQVbPT0KylZ7u7HRa+26FH6a+K/uw0KcdC2MpijvIFDZrxWSVK
         lfyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762864027; x=1763468827;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a8agYfx223SVNEnTOzoADqgO7cW6tHMwJWHrHwFhic4=;
        b=gQfxct/hzR6T0FXJVwwQunsm8mZ/sAG3IXVi2bj0EQuS2oim2oYPHvwEhRmXCJvyQ4
         CAcLZKNHad9A6h69drpxqYet4gF8te36/Bu8aaQ7Bsv4HyvIgT9w2Od/XqYDGi6A6DIw
         S1YPt/XGwh2kTkw5yqCulepk5YU5WAUVYl3C37upK6A/qPRr7YjrAI7+u0pGtfnDZVJa
         AMgcFR6JkVPupz7DcsPDx6MqkdpOMf7HCKs7h2khCYJj81oZp9gYmDHOKfKbbR3hZ5BB
         k8XLddTN3qyyAJmOpPSMo5JZscE1U5tDbuLImBMr8z9bjpCS9nwlylOx8X6b2xauIsDM
         j5SA==
X-Forwarded-Encrypted: i=1; AJvYcCWEga3FIRGFoQ75uy3FyuSlWzUYxo0aCYv7PDDe9VE6nDkbn5jSFa+bt0OR87X/j9VZ2ewKnkbihIgu@vger.kernel.org
X-Gm-Message-State: AOJu0YyKNASo4HF2mFuFdRfW+QNPYl66gDgQ0VgjVgxX5wkiRK4fEuTv
	Kpjwe32clBKGmY54xwMCLr++v0wvJEHp5KYVKa+B162ncLGPYBKiy8T/P2qDrCqMtMt/PXdb76G
	ibOQHB/5Z1mMSWHtXXFPUCvU5SKkPvdb1QZH5u6m2YyMptdTVQVw+jW507gTxSyb3WuG1jblx
X-Gm-Gg: ASbGncu1brG9atRMqsMDTsf0n2qG0b9kjerzqJ3D6tqwMO88vi4bBY69O7ujkAly4u9
	DImZFGEP4XnyD5M8Tn059lZtl2IpuWqmqKk6zGhs6FtFVdp8j5SDqy/7U1TJ/euWb2FZLs/05Q+
	EHfRI4tgNHxAhIZbwzD2oN3V64GYe1DAkfFjrNStUIezIjzKD6sVR+6wM5w8qQRKQJizBeaJWPM
	T3EvZRgt1Typev5Rx/YaiTAIM1p2NNEIvylkKMh6/TgvCPGoM0r53Ph35NirgVK7ub1Edh6aOUW
	6X2f/WgyCDs2rIIPD7FcmYHc3zwyMstCxb4N0vXqzxBrbJ3QuqHIA1ICVqurl1vwcNhpm2bMrbE
	t7FL3aycpzoNQlJeIx11V9gZY/IK0Ik11EE5hBhq7yDSEJfgN6gmDB0YZpSCJgoXPAF5pJUI5rT
	1qcOop2PD9dwze
X-Received: by 2002:a05:622a:5e05:b0:4ed:b15f:57b2 with SMTP id d75a77b69052e-4edb15f5a5bmr85004751cf.5.1762864026888;
        Tue, 11 Nov 2025 04:27:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFe9LUolpDhLT0R0tyAlGuJuGN8jrUFYieDxdpVOFRHcF3z84ppoj6e3wQekkYdV6mDwe4Ogw==
X-Received: by 2002:a05:622a:5e05:b0:4ed:b15f:57b2 with SMTP id d75a77b69052e-4edb15f5a5bmr85004301cf.5.1762864026189;
        Tue, 11 Nov 2025 04:27:06 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5944a013cfesm4868256e87.23.2025.11.11.04.27.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 04:27:05 -0800 (PST)
Date: Tue, 11 Nov 2025 14:27:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Riccardo Mereu <r.mereu.kernel@arduino.cc>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, broonie@kernel.org, linux@roeck-us.net,
        Jonathan.Cameron@huawei.com, wenswang@yeah.net,
        naresh.solanki@9elements.com, michal.simek@amd.com, nuno.sa@analog.com,
        chou.cosmo@gmail.com, grantpeltier93@gmail.com, eajames@linux.ibm.com,
        farouk.bouabid@cherry.de, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-spi@vger.kernel.org, mm.facchin@arduino.cc,
        Riccardo Mereu <r.mereu@arduino.cc>
Subject: Re: [PATCH 3/5] dt-binding: arm: qcom: add arduino unoq codename
Message-ID: <fuz3se3hwtoqlgcifo35qozda5xy2gneatm64f5nsq6n75jteo@vqbu7naldfgq>
References: <20251106153119.266840-1-r.mereu@arduino.cc>
 <20251106153119.266840-4-r.mereu@arduino.cc>
 <2c67a82a-3a4a-44e5-8c82-42ec6320d5b5@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2c67a82a-3a4a-44e5-8c82-42ec6320d5b5@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDA5OSBTYWx0ZWRfXzfCMtRdbuZCA
 ntFRoVXbkFBmjZGTctm9zaaVKV6bet2saYGkSqXsnzSHIm9zUQaSo1anjM9Awzd3+khgreWL5+/
 ZigtH/jb7pQAtfjjVCyTeM1QIheUDm80x+Et4pq++lkYlp5Tvmiw8hPG9nHpbKIJz9YOk8Z0B1G
 PzlGJzJchUfOjYx/2BSO8q0Slynof6A1nyuTKZa6bEe9seekf7p3ZGrZp29TlyamVaaAw0aHilY
 5QsYM7K2XoWayZkiR0jbQD0FUrsvMOIrAmMvq76adp0oavWnJQr8ShJctqoyR8ym3/RE8pUnpH1
 Fy03dFCCDxSHgByYpbaQY9OkrUUjo9VpBKnyo5bOX0fVyLouTCKJHWoMyuYb4lyHwThtDxbSWaz
 5NnQ57AcTuXqNfGnXthD7LyxG9TWEQ==
X-Proofpoint-GUID: Io7OW3G-Dt0oIQT_x3Ixuvz7aOPL-tzC
X-Proofpoint-ORIG-GUID: Io7OW3G-Dt0oIQT_x3Ixuvz7aOPL-tzC
X-Authority-Analysis: v=2.4 cv=CeIFJbrl c=1 sm=1 tr=0 ts=69132b9c cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=XehZ0O5PNwaYdYEx2uMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=i6qsmYmKKdoA:10 a=csto0wWSG80A:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_02,2025-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 phishscore=0 malwarescore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511110099

On Fri, Nov 07, 2025 at 08:13:48AM +0100, Krzysztof Kozlowski wrote:
> On 06/11/2025 16:31, Riccardo Mereu wrote:
> > From: Riccardo Mereu <r.mereu.kernel@arduino.cc>
> > 
> > Document Arduino UnoQ. Arduino UnoQ is a single-board computer
> 
> compatible says imola, not unoq.

And compatibles for various ChromeBooks also use codenames. I think it's
not the first time the vendor uses a codename instead of the marketing
name inside the compat string.

> 
> > combining Qualcomm Dragonwing™ QRB2210 microprocessor with
> > STMicroelectronics STM32U585 microcontroller.
> > 
> > Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
> > ---
> 
> 
> Please use subject prefixes matching the subsystem. You can get them for
> example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
> your patch is touching. For bindings, the preferred subjects are
> explained here:
> https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html#i-for-patch-submitters
> 
> 
> Best regards,
> Krzysztof

-- 
With best wishes
Dmitry


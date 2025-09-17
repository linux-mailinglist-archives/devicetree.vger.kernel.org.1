Return-Path: <devicetree+bounces-218527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F434B811E6
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 19:06:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B64A04877C0
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 17:06:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73DA82FC88B;
	Wed, 17 Sep 2025 17:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TUEtssX0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F21752FB968
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 17:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758128795; cv=none; b=soTHrohQ6AeogFyrBqePKsn/JoIsthnuKqhSuA2m3lWsbyo+BSlNlTUNodQDg+zadLf/0QhuhZdm9nimng0CI4uUJ2jLYcS5ulaTDusN1MSu4uZPMR/4UbPNFaWbLazTn3WJT5MkDrIrAqq/9iCFpRZxZl5q0fXDybwEe4z5LWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758128795; c=relaxed/simple;
	bh=76CbFOoG7fO8/knkAO5zHOpDO4lOmZ2qmfgZf2rMkng=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FrK2L+aXVWwGgGn7Vdm3GNAJPHsxyCHwcPKUB0ElKjDWEoEI0n5cmvJ9A7bYpNRpoMZ64z0yVtKb61dVL30cLs3hrms6SPq9CyT9ehzbZtmCC71Dm/JON4/QtChrjb+IiPin51HxNMo3HSoK/6SNkIsVuzKCL/jXXOGkZHsFOnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TUEtssX0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58HG9q41010750
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 17:06:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CldjWF1Kec39RRy7IefPImhF3OKmtV3emAzZ2/VbBsc=; b=TUEtssX0LEp4+Yxj
	JKISkX+yfP9FaUzYI7MnA84nLIbPhWzkDwswuy06e9tZtu1ufEXn9TY5FHq5KtEQ
	QOk2Sj2p4JsG31ZA20mZYG5t9YHKpHhhAVoVeBjdF/eLpsxoUHYoORtpDBHE+DJ0
	8chO+dMThHKCxYrIZ61qXJLb84+83OE+DDc6ZvHWTGHUKtyQ2molI6e45D4FmTWh
	KIlhcFt37AQzo8ZA/XrIFFK/5ZM2U02MzhYZUWb9D1ATL8BYQ0P/S3RVy/sWfa+W
	MaBeAURM1jxhrpN+VzmWeh1tOj9sGaKmamNMjLTXLuk+1nyG7hkXQdrphs2VQmIx
	7Evx6g==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxxu7ve-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 17:06:33 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2665df2e24aso264205ad.2
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 10:06:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758128792; x=1758733592;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CldjWF1Kec39RRy7IefPImhF3OKmtV3emAzZ2/VbBsc=;
        b=v15TonoBMOOl2+JtS6Ett1V9L1cIamN2UX6Dywu413ZPQNIdoVPOZ3+TzWQYuWXOLm
         VJT8uJ3OHFn7CpgGP7RG11GzIjKBMjgeok9ITfCq+6vw0sct71DXi5nHYvgBO3Nt5IEH
         dvaZVlBn4z+CH0O3ECmGzKCJgP1ASJfiYxWLaKX+6hy5eeVsJSftb4B9d6fLVJboj86p
         KQEp3Nh7TjiqaCQXinISonh+RhcmiAKdd4QJ3Ze9OOxh0UNd50V2ilcrL2KMvQfqZJvc
         viYrHd8mytQt0WiJusTrIkMMuUlxZOZDzdUWeVPky2gebdpBGkJt/3HAhuqVvQAX+Kct
         AMUQ==
X-Forwarded-Encrypted: i=1; AJvYcCUocOjpmSgEkOVPBHdhuA8TMEsj2XKfypZAr6eBXPagq4W/hMm/Lf2tBOOCI2NiG2/wN3fkcDo93G6g@vger.kernel.org
X-Gm-Message-State: AOJu0YyTxhygD88kP/AzAOxG7ILV/11wnCovvk5gtxzg/iHvy3M1fvmh
	ZztAxjcrbF16tV879Vq6/zRhg/mkNrMtOLq7NwUIFWyG5QAtCrrK9UF/IkW+U4tyB6lItA/FqNd
	MKvhcWQb3XNB/0OkR3S5zU0SowYakldzBaQkhNRkV19rp970FmzLZKwpMImL/WR19
X-Gm-Gg: ASbGnctpnwC1lFyTCWhrYTfHw5/kJdwBmMG4emU55aa2Un2DkBfbWZ2TF2bVQjGuVh5
	/MO2TkDcelTwf6TFosQjtSbCwGXYLjkayaOvlwi9bSW6mkQm7m6SFfcSaEYFAB8bP8SDEpkUeqy
	rjXkRs0v3jq/LKqr5svOalIoWsqc8eSHSA4Spb8Lb1CbPvDmGs0ZJCCMWOO5NWqyt2D9kEZWK0z
	+YTxOrgsGzqsm4wVs2qt5C7vcUQLtobkhEgK0KgX/6A7H6xGHt1g5s4AHvE2rIzqtiYECYfYkyX
	YHWnDhWJ5UbcxBI+1fXkK7zuWF0N3KZxDLfss538FtaAFCLg1iaBr4c+W70Vxdo=
X-Received: by 2002:a17:903:3d0d:b0:266:2e6b:f5a7 with SMTP id d9443c01a7336-26813d04f4bmr37704495ad.58.1758128792203;
        Wed, 17 Sep 2025 10:06:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEiYS06pnxVlJyVc8usIQK/iQa6m8Xw/xXXNj5CZpC/OXWCWIJ7/dsM3zh0SSUhq8YicFepBA==
X-Received: by 2002:a17:903:3d0d:b0:266:2e6b:f5a7 with SMTP id d9443c01a7336-26813d04f4bmr37703845ad.58.1758128791682;
        Wed, 17 Sep 2025 10:06:31 -0700 (PDT)
Received: from [10.216.34.136] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-26980053dbdsm1270735ad.9.2025.09.17.10.06.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 10:06:31 -0700 (PDT)
Message-ID: <472265f5-8463-e0ed-6386-f52478d4f2fd@oss.qualcomm.com>
Date: Wed, 17 Sep 2025 22:36:22 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v14 01/10] power: reset: reboot-mode: Synchronize list
 traversal
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik
 <andre.draszik@linaro.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Srinivas Kandagatla <srini@kernel.org>
References: <20250815-arm-psci-system_reset2-vendor-reboots-v14-0-37d29f59ac9a@oss.qualcomm.com>
 <20250815-arm-psci-system_reset2-vendor-reboots-v14-1-37d29f59ac9a@oss.qualcomm.com>
 <7eqa3rs3nvy7htvrkwyh5m7ok34n6c3h2dxn7xm2abdjzav4hp@i275ed4owgru>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <7eqa3rs3nvy7htvrkwyh5m7ok34n6c3h2dxn7xm2abdjzav4hp@i275ed4owgru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX8AdUQIq6+Ztx
 Icx3Umjq6XPtfuhhDiVwi7Q1K1upktDe3njGlOizrprQ+O3hysK8t2T3DeboC0v7lR6cJykiBkU
 VpSJfPXfgp9uy2GLHkyGzGfxRAxsgG5bsTPZXFaM7N+2u/4sD5YLwUnObf814lGZWHBHuBCHs1C
 Zm4g3M31AZTRV0OVByWOWYhQPHKrmsHRy2x5PhTG1rHiVu18dRwo/InGZszcxtEgbx+Xd5qiww+
 YXyIkjAutTNQYGdfe6v7+qmKXrexfYtGn7icghfVW/L3BvAaqm25zOjKndkZc1/yVdwoY4a1lVP
 BIyU4TP8nlm2B7t0r1H4Orzhas3RDpGLY/LKX9TbxYCL7OZ4QXzwAVtmQimbktJaLG/GNQx7SDX
 u/ETYXLw
X-Proofpoint-ORIG-GUID: zDkXIIziPgwBYplobUXT4L7YNutmk9d3
X-Authority-Analysis: v=2.4 cv=KJZaDEFo c=1 sm=1 tr=0 ts=68caea99 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=hMdzhsAlQAsAiGmCIg0A:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: zDkXIIziPgwBYplobUXT4L7YNutmk9d3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 bulkscore=0 adultscore=0 impostorscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202



On 9/17/2025 12:14 AM, Sebastian Reichel wrote:
> Hi,
> 
> On Fri, Aug 15, 2025 at 08:05:06PM +0530, Shivendra Pratap wrote:
>> List traversals must be synchronized to prevent race conditions
>> and data corruption. The reboot-mode list is not protected by a
>> lock currently, which can lead to concurrent access and race.
>>
>> Introduce a mutex lock to guard all operations on the reboot-mode
>> list and ensure thread-safe access. The change prevents unsafe
>> concurrent access on reboot-mode list.
>>
>> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
>> ---
> 
> This should use scoped_guard() and a Fixes: tag. Otherwise LGTM.

ACK. Will update this patch based on scoped_guard() and add a Fixes tag.

thanks,
Shivendra


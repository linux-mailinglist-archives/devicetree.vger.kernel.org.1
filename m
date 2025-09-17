Return-Path: <devicetree+bounces-218513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33160B81060
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 18:33:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 55A882A2848
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 16:30:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B1D627CCEE;
	Wed, 17 Sep 2025 16:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZiHXr1VS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6A8834BA29
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 16:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758126598; cv=none; b=ZI+kQPpo1KHJmbqTE1oXeAKueHIFS/NkmHlu0+XWErzwtmZ42FpygxoMG9VblBmmPLE2H8u/+/TAGl5ig0n4qJYfPxnKnovpG/rhzWP296S+47WEQD9uM0M4wv5KTrLiMEO7JwdbOs22C4mUU0ZXbU7IWyw75R8/wI9Rk9obx1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758126598; c=relaxed/simple;
	bh=j/kIpr44aITpYwfRH5MGrbeYBzQDUseVMB6E+aFtzw4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UcbXvUncx4hzUAf50KEM4KE2B0b43j7meAW7jr1Y+ofXvWlseq7hpvdGtLXqT9JtrNb6BouYifYiWCyogvovS3oKfAA84KE1erGls6j5ujeVaQR/ReSU11GHxyIsdjjxLuXvhn2c6dh2PiodBXkZc6b7xYLgp7l40jQ9tFZAQe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZiHXr1VS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58HGOHMt029779
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 16:29:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aPbliOpcCjIzayrMLkNw1FIe5VlXIVH9kvQijQYZm20=; b=ZiHXr1VSwLPkG2/M
	uN4aJnP3sUlNJHPGAh3ELOm4kQ4P2lX+AdVXRyMYk27T7PcAAhrVYwvHjtwZjgHF
	uhuOh6Vaga2zVy0qbAVoknjr2A8srxFLICJWEY8Az8eL8D26lVz1ipfyB/knPy+c
	Da0bx9l7qK2KqhohTPupv/taCjPhHh+M1NatXt3JMlxX+kA5Jm3XcYilL/PrlDlP
	9BYLM72CjrJBhFMpW4UwRBQNImIzZL4c+7a75wZVGjDypcZu0PitzLFjaTDDo8p/
	hxNDhMB4Xd2wobqCu7aH/QKoK07FdCpEX5kIu1EemxR72AIlYDL0IDdA+8s9lCkr
	CVrLBA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fy0u4bg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 16:29:55 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-777d80370a7so56397b3a.2
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 09:29:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758126595; x=1758731395;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aPbliOpcCjIzayrMLkNw1FIe5VlXIVH9kvQijQYZm20=;
        b=rHzY5HKlhxiViIIJnBFs0dbLY6F6epeqhSxFBs7nBJKqQiZlQC5k0cLfH4uvF2xYYS
         ou5BYx++pPFpjwfQA4uCFuXmfxqBZmNQ1w1EJhEnjMTQpmgX/L+D8zyxqrn/5+Sdrbad
         oH5UBfUVGDR6P+0HrQ0OfzOp0hDfFHKBU7UPP/vN7yQ9bjp7wjc1GBr3x3afuIt+hTdw
         SusCpByn/HLhKmh+UCIvx0gD28h+I2fcAptnvitoOHQX6oBqYW8QHxB/ySObJ9a0AT5H
         rmhmiV4H5ZX3nDifTLokSv3feBI/RbSMe5XNR78ysyBIWXTurSX18AAyaR+NhZA645fH
         l6Rw==
X-Forwarded-Encrypted: i=1; AJvYcCUU/mIfz93d4H4fET+mMFEqM81oZl6N8Za6wyqgjY1YZRKYQqPqODDol3DwWHdgPSvmt1hgVFT/TyT0@vger.kernel.org
X-Gm-Message-State: AOJu0YyaS2GrC37/GTcoHvmIHbuh3cuzG3J0okgIzOE1TRNayl33UvTC
	wH1aMjsvFcEqEg495KoIthMTSbMkOZpPCeg9pCYIsfmaBEu/rtGo9aE804DlAHtCdHDmb51+Iw0
	5Ks9nBSVIWcrPiRn0BgiMZMwQddFbBaUV05sUntbC3xNcnQnzVWBD5Uz1TQIXHo+7
X-Gm-Gg: ASbGncu2G1ivwOO0NA0Nge+6gmr42eiO//lQYME2naBCd5POFZJuaO4cGAzu9PZ6Tf+
	zqx5+F/C+zVYdZcshNK73i0tXDJyvB3u84xI/rb0pqxKB18jraVyNsdupgbXWdH9hYErOBzqIDz
	4zal363+NQFoJjrn2MVE/B8e+U44jaPlQqHJ2Psupa844LFPj1YXINWbVfx99G2yDF/hzWj4EsP
	ODau+quHZHLqvy6xkFeRyP1ezBeqEHWDEDjVb/98rKAKw08GSUZYve4jKeslz19Jab1gsQHzmsC
	7uaO2J7s5Pgk6fcYHE4uJFWN7UcfR4nVa3O9kTuPWvIRXIeBuavtSxxBJ4eYAT4=
X-Received: by 2002:a05:6a00:8d0:b0:776:1f45:904f with SMTP id d2e1a72fcca58-77bf9268104mr3162371b3a.28.1758126594848;
        Wed, 17 Sep 2025 09:29:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHSAETCbSP3vIIE9VWiyL8Alz3IwaM2MYDhGvePBLrTzg5i1/2OcH9B9+r9HC87lkyc+hFW4Q==
X-Received: by 2002:a05:6a00:8d0:b0:776:1f45:904f with SMTP id d2e1a72fcca58-77bf9268104mr3162319b3a.28.1758126594363;
        Wed, 17 Sep 2025 09:29:54 -0700 (PDT)
Received: from [10.216.34.136] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77607b3603asm18872680b3a.84.2025.09.17.09.29.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 09:29:54 -0700 (PDT)
Message-ID: <3c56cd00-770f-019a-d93b-5ebaa6b9374d@oss.qualcomm.com>
Date: Wed, 17 Sep 2025 21:59:44 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v14 02/10] power: reset: reboot-mode: Add device tree
 node-based registration
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
 <20250815-arm-psci-system_reset2-vendor-reboots-v14-2-37d29f59ac9a@oss.qualcomm.com>
 <in6bqvemnscvuxbumpxogxiiav7odmsc3iazktifninh6iqen7@qwhrhdidcx7y>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <in6bqvemnscvuxbumpxogxiiav7odmsc3iazktifninh6iqen7@qwhrhdidcx7y>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: FWXpfsUkRTSeTdw560zB-mbhwBdkp7U-
X-Authority-Analysis: v=2.4 cv=btZMBFai c=1 sm=1 tr=0 ts=68cae203 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=6ImPWgPuv615vBLeUzsA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: FWXpfsUkRTSeTdw560zB-mbhwBdkp7U-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX3wqsk3e2Y9B6
 Ke5oj11XsFHw/5OVY2QAK4xUZvhgz0r2H9B/N2UkRZFhCCjUffnIBoNvUMBA2zjOf0VaKk/aU1e
 gAXgl63RXU/uQmNP2kDQjlMLfAzMfOgWMXuZF4/kBjRqm8G0My+l0Nzf4Ndhwmb0qktn8a4/3pL
 KN2UqqsVv3OsGhsVbJGoE+rt76eiwYWQuakPGyfGpoSdVu+7aRFKLqosT4h+QDn82x8KPo6CACk
 kgBpmlFFx+0buQpc4pBGaqZkK+bpoFEnSvnghEEqQHre91TAQK5NRs4gGTdqVjEExapkhaOVTt0
 TOPhhpBpKwpgKPlykBeCXfSywF5ii1+3mRrifhmf3Nx9KylwY3uN3Tht2mw8/LBy7FHiQZBJHXL
 KcqoBTlg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015 malwarescore=0
 spamscore=0 adultscore=0 phishscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509160202



On 9/17/2025 12:18 AM, Sebastian Reichel wrote:
> Hi,
> 
> On Fri, Aug 15, 2025 at 08:05:07PM +0530, Shivendra Pratap wrote:
>> The reboot-mode driver does not have a strict requirement for
>> device-based registration. It primarily uses the device's of_node
>> to read mode-<cmd> properties and the device pointer for logging.
>>
>> Remove the dependency on struct device and introduce support for
>> Device Tree (DT) node-based registration. This enables drivers
>> that are not associated with a struct device to leverage the
>> reboot-mode framework.
>>
>> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
>> ---
> 
> Please use fwnode instead of device_node, so that the same thing
> can be used with non DT setups, if that becomes necessary. Otherwise
> LGTM.

To be more clear on this, have one question: the current unmodified
design of reboot-mode is dt based:

struct device_node *np = reboot->dev->of_node;
and then parses the node using for_each_property_of_node(np, prop).

We want to refactor reboot-mode to support non-DT setups by adding
support for fwnode-based approach (struct fwnode_handle *fwnode)?

Can you please explain a bit? Some more details would be helpful to
make the change.

thanks,
Shivendra


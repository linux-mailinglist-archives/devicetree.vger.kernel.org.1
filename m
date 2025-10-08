Return-Path: <devicetree+bounces-224525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE41BC4C0C
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 14:18:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4CF903BC21E
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 12:18:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FC07222568;
	Wed,  8 Oct 2025 12:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W0AxK315"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B3481D5CDE
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 12:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759925908; cv=none; b=MYtJlr0IUAnUIdgxJzl9lx1IibKMW5LN0IXZnPqBwvjFj2FzdVrje8wgz55B3raOV7sC0n0IGZ3ETEYegg06EmXAt5LmvjRJxbhW6kIkblKxaWfG32MjX1Pknyh4htwSgm/fxoDr2kZv0PZ8QSUWSQvmc3vOW2usWwIHtbHxDnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759925908; c=relaxed/simple;
	bh=EAIIG+pjQ4gXZyIzxLLehKpH7cN9IqpSw+UGcxx1fWg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gXNd38q5OWuWeETdb/pkFOSR3oC4u5Lg5vBT6m1eKsjdtKe9cEdXkphWdnzT80tBpeDWj87y5igQSegaYJcnFXWA03L5+Bb7bUsW51dGmRd6mYV5/9zTP7ydAKN7XGyyWKdHIRf9Ke4gg8sDMaZcaqC4T0eOE4nj/lfuyfTLhKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W0AxK315; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890T42028979
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 12:18:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AN/7p1+iy+u6qC3KjWSKiQrrVYUnGqj4/HiYhPktPdQ=; b=W0AxK315mxej4fd8
	if7tWpWDgvrLrx2JVpSLU3HqKcDrbUu64t/0sPi5wPQ7njNmbK4sNZuQQMY74BGK
	XVfVenVdo2b0lUWAzngtxo4PsLyotUPwPdYNA+3iX8lUaGZLa4NNCvNYKASp/fls
	+QIwjsi4YZW4CWL8ttBiS+xW1QiwHwK0YZSaljuaLcVh0u+iN/wUdTJxq/CIHBrw
	ZGZPEmEcOdoiVAT7HFnDlhyz1YB9l8wZu54fcZQq5Ukdv07IBoit5eeE/mQhh/7G
	3QGAsUcCcIBe/0R7otYY58M1mv0/pAQGFZdwr8YLW2NqdvjDGvCgbpglAQOh9r47
	9I6kNA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49js9e2k38-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 12:18:25 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-28bd8b3fa67so70169905ad.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 05:18:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759925905; x=1760530705;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AN/7p1+iy+u6qC3KjWSKiQrrVYUnGqj4/HiYhPktPdQ=;
        b=MKWca91+BT9NyODkm4HhlXo/axznlbklOgrhqBxpmNLc1pHEe5hD/bwWu7YJwzJ47g
         q9Hxvl4Bzz+LAT8pGQEJrrpN3JxnUgupIDMtorCI65PxFVN5L9Zq0gKm4W4K8QzRW2QK
         /foJ/72NIMe6mZItrp6vFIE3FcD+GvuaKdSTE1TOiD3ZP0D/1ulfPQq9N5k2edrk53JP
         LG06H67Wd54hRqgsa2eQWknv5AaKSBdZNQB9P4vcMysKVNEWrlX3ohP5pRG+RyUCtQK5
         bodjHb+NKMo6uUptn04QzoiBWhIOE7PuV3DyZV7XPHck+wccoKhsT4aCjUt7ESpzpIFl
         K7Zw==
X-Forwarded-Encrypted: i=1; AJvYcCXJXWXAEMdokDZrJwNuYWWlHVQcttVQdT9XGBkHymPG1CdI+ZBzKLleRrdL/n9p73Of+gLzHJjWpDSl@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/r4qgmWvIABRmaCfW2Ksz+SIN2G90Y+81y9+HlZrqZaQGcuQs
	O7wKOMm1YPB4sbFdeUVaKUn3AQg+GWQKfjrgtgs2Nla99GKWg0sdTfIwcD595TNZfn5TuXNztT6
	dCFvmVF7FDz1yNGxeqb/ZtOFjOvahaFHcsnXu+K2bWWX7B2jxf4Itqa63rfJUFhay
X-Gm-Gg: ASbGncsAyuxmWbFl6qEMd5kiKRDbQ0Gt/qOiNI4yKSArQB6hjHxSkuB7BJPVCp5JpFN
	WFoViGCLM8lazsD5wzeXKPwNQOQnx0eZ0HkgrWh2voRXSSiie+bqoMtZOJYhHSS1/ULXNwd1ciQ
	i90MdML1q4ZG2/U4tvrp/4f40KvhwHmBXGsx2Lc56hsdULJ7iR/H1shhGA/aG3Kpr8MvfIZsRXa
	kinszvpBadEmMaxSe4XQ6jLrZC/qbduKsZaszkJxtBZEqe7AQmvB6t6ALVIePugHjwVse0dYW3Y
	fwnZ9QVqc1BLndFnMlFcLQJ+zkFNiAtLivMgVT1ApMqVa78I8u9Ni/ARItz7mzIgtn/7VXLvHfM
	NoW9sLiqNPZoh5/6iOjP7lxASrGx6S/yviCGUTGMrtpxVljxI7qK4XDpwvY15zMU=
X-Received: by 2002:a17:902:ce02:b0:25c:d4b6:f111 with SMTP id d9443c01a7336-290272e4666mr45347285ad.47.1759925904663;
        Wed, 08 Oct 2025 05:18:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHncbR2ufYiXXANSmQUeJIAwNzZ9UKvXSYjMvm+movg1bGrvTPLIrZNPoo9SHIdGgpbrlbk7w==
X-Received: by 2002:a17:902:ce02:b0:25c:d4b6:f111 with SMTP id d9443c01a7336-290272e4666mr45346755ad.47.1759925904061;
        Wed, 08 Oct 2025 05:18:24 -0700 (PDT)
Received: from [10.79.195.127] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1ba25asm198168315ad.87.2025.10.08.05.18.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 05:18:23 -0700 (PDT)
Message-ID: <40a677b4-15b4-4ee7-85ca-c9ea908f1048@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 17:48:20 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/24] arm64: dts: qcom: Introduce Glymur SoC dtsi and
 Glymur CRD dts
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <b3xkzhwfmksknz3kzj273mtkzfesphjetfusnfgcwj4j24kj4e@3sc37anlhweb>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <b3xkzhwfmksknz3kzj273mtkzfesphjetfusnfgcwj4j24kj4e@3sc37anlhweb>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Hrl72kTS c=1 sm=1 tr=0 ts=68e65691 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=qC_FGOx9AAAA:8 a=RKSSqbySQXd_LJkhEWwA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=fsdK_YakeE02zTmptMdW:22
X-Proofpoint-GUID: H6KCNEUBrba42wtctMH4jXZWx2emFskf
X-Proofpoint-ORIG-GUID: H6KCNEUBrba42wtctMH4jXZWx2emFskf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAwNCBTYWx0ZWRfX4EkHvpnjUnYa
 rky7Xg7xHX5AQUCk8uFDqEz02Io+eIDeQ9Xx5LRCchIQTamK1aKZh4UOw4b+ODDnMWg8d0YcJ9q
 9dLMR2bebOwTaEeMMklpF6dqFKjnP5ODfGGhu7Y2UZBViF7N8uQ+naRBMFXfomrihxlduzy+GuF
 vNhUVGjJOe9aR04gShBI73cnQnT1mVX4/eJBOaoaQi1SRSSsSujJ/ld3nGY8EzAkPKf2npEQrOr
 IYLtGubu2HQqnK/mBve1BbSvWK7YBdSq/fRWGym4c6NAKi6FnLCiHoScqnd6AF26gQxNlJC3uX7
 Q8n+DfxI5Z38GHhek+oZymqefy6/IXF4ENB0VMsSSeAs5kKiXZoaOhXAsEKUmDnWJgxsw0pSNx5
 nJogzmpbwCHYAn6ylk6yMMaWBHT3fw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040004

On 9/25/2025 11:00 PM, Dmitry Baryshkov wrote:
> On Thu, Sep 25, 2025 at 12:02:08PM +0530, Pankaj Patil wrote:
>> Introduce dt-bindings and initial device tree support for Glymur, 
>> Qualcomm's next-generation compute SoC and it's associated 
>> Compute Reference Device (CRD) platform.
>>
>> https://www.qualcomm.com/products/mobile/snapdragon/laptops-and-tablets/snapdragon-x2-elite
>> https://www.qualcomm.com/news/releases/2025/09/new-snapdragon-x2-elite-extreme-and-snapdragon-x2-elite-are-the-
>>
>> The base support enables booting to shell with rootfs on NVMe,
>> demonstrating functionality for PCIe and NVMe subsystems.
>> DCVS is also enabled, allowing dynamic frequency scaling for the CPUs.
>> TSENS (Thermal Sensors) enabled for monitoring SoC temperature and
>> thermal management. The platform is capable of booting kernel at EL2
>> with kvm-unit tests performed on it for sanity.
>>
>> Features enabled in this patchset:
>> 1. DCVS: CPU DCVS with scmi perf protocol
>> 2. PCIe controller and PCIe PHY
>> 3. NVMe storage support
>> 4. Clocks and reset controllers - GCC, TCSRCC, DISPCC, RPMHCC
>> 5. Interrupt controller
>> 6. TLMM (Top-Level Mode Multiplexer)
>> 7. QUP Block
>> 8. Reserved memory regions
>> 9. PMIC support with regulators
>> 10. CPU Power Domains
>> 11. TSENS (Thermal Sensors)
>> 12. Remoteproc - SOCCP, ADSP and CDSP
>> 13. RPMH Regulators
>> 14. USB 
>>
>> Dependencies:
>>
>> dt-bindings:
>> 1. https://lore.kernel.org/all/20250918140249.2497794-1-pankaj.patil@oss.qualcomm.com/
>> 2. https://lore.kernel.org/all/20250918141738.2524269-1-pankaj.patil@oss.qualcomm.com/
>> 3. https://lore.kernel.org/all/20250919133439.965595-1-pankaj.patil@oss.qualcomm.com/
>> 4. https://lore.kernel.org/all/20250919140952.1057737-1-pankaj.patil@oss.qualcomm.com/
>> 5. https://lore.kernel.org/all/20250919141440.1068770-1-pankaj.patil@oss.qualcomm.com/
>> 6. https://lore.kernel.org/all/20250919142325.1090059-1-pankaj.patil@oss.qualcomm.com/
>> 7. https://lore.kernel.org/all/20250920113052.151370-1-pankaj.patil@oss.qualcomm.com/
>> 8. https://lore.kernel.org/all/20250924-knp-pmic-binding-v1-1-b9cce48b8460@oss.qualcomm.com/
>> 9. https://lore.kernel.org/linux-arm-msm/20250924183726.509202-1-sibi.sankar@oss.qualcomm.com/T/#m46501fe9edb880fc11f69442eaf4d2855f7e4608
>> 10. https://lore.kernel.org/linux-arm-msm/20250925002034.856692-1-sibi.sankar@oss.qualcomm.com/
>> 11. https://lore.kernel.org/linux-arm-msm/20250924144831.336367-1-sibi.sankar@oss.qualcomm.com/
> Please, don't list all the possible series. List only the patches which
> define the bindings which are required to _build_ the dtb files and
> which are not a part of linux-next. And also please include them into
> `b4 prep --edit-deps` so that all the bots can pick them up.

Sure, I'll add singular patches using `b4 prep --edit-deps`
Bindings dependencies were added to avoid checkpatch warnings
about undocumented strings, dt can be built without the listed
dependencies except 9. patch 2/5.

>> rpmh-regulators:
>> 1. https://lore.kernel.org/all/20250918-glymur-rpmh-regulator-driver-v3-0-184c09678be3@oss.qualcomm.com/
> This, for example, totally isn't a dependency for building the DT.
>
>> PMICs:
>> 1. https://lore.kernel.org/linux-arm-msm/20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com/ (Patch 8-11)
>>
>> PMIC-Glink:
>> 1. https://lore.kernel.org/all/20250919175025.2988948-1-anjelique.melendez@oss.qualcomm.com/
>> 2. https://lore.kernel.org/all/20250924232631.644234-1-anjelique.melendez@oss.qualcomm.com/
>>
>> spmi/pinctrl:
>> 1. https://lore.kernel.org/all/20250920-glymur-spmi-v8-gpio-driver-v1-0-23df93b7818a@oss.qualcomm.com/
>>
>> PCI:
>> 1. https://lore.kernel.org/all/20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com/
>>
>> Remoteproc:
>> 1. https://lore.kernel.org/all/20250819165447.4149674-1-mukesh.ojha@oss.qualcomm.com/
>> 2. https://lore.kernel.org/linux-arm-msm/20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com/T/#t
>> 3. https://lore.kernel.org/linux-arm-msm/20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com/T/#t
>>
>> USB:
>> 1. https://lore.kernel.org/all/20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com/T/#mb7879fdba16496554a53c3726d90f94b6063dd09
>>
>> Linux-next based git tree containing all Glymur related patches is available at:
>> https://git.codelinaro.org/clo/linux-kernel/kernel-qcom/-/tree/glymur?ref_type=heads
>>
>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>> ---
>> Jyothi Kumar Seerapu (1):
>>       arm64: dts: qcom: glymur: Add QUPv3 configuration for serial engines
>>
>> Kamal Wadhwa (10):
>>       arm64: dts: qcom: glymur-crd: Add RPMH regulator rails
>>       arm64: dts: qcom: glymur: Add SPMI PMIC arbiter device
>>       arm64: dts: qcom: Add PMCX0102 pmic dtsi
>>       arm64: dts: qcom: Add SMB2370 pmic dtsi
>>       arm64: dts: qcom: Update pmh0104 dtsi for Glymur CRD
>>       arm64: dts: qcom: Update the pmh0110.dtsi for Glymur
>>       arm64: dts: qcom: glymur: Add PMICs dtsi for CRD
>>       arm64: boot: dts: glymur-crd: Add Volume down/up keys support
>>       arm64: dts: qcom: glymur-crd: Avoid RTC probe failure
>>       arm64: dts: qcom: glymur: Add PMIC glink node
>>
>> Manaf Meethalavalappu Pallikunhi (1):
>>       arm64: dts: qcom: glymur: Enable tsens and thermal zone nodes
>>
>> Maulik Shah (1):
>>       arm64: dts: qcom: glymur: Add cpu idle states
>>
>> Pankaj Patil (3):
>>       dt-bindings: arm: qcom: Document Glymur SoC and board
>>       arm64: defconfig: Enable Glymur configs for boot to shell
>>       arm64: dts: qcom: Introduce Glymur base dtsi and CRD dts
>>
>> Prudhvi Yarlagadda (1):
>>       arm64: dts: qcom: glymur: Add support for PCIe5
>>
>> Qiang Yu (1):
>>       arm64: dts: qcom: glymur-crd: Add power supply and sideband signal for pcie5
>>
>> Sibi Sankar (3):
>>       arm64: dts: qcom: glymur: Enable pdp0 mailbox
>>       arm64: dts: qcom: glymur: Enable ipcc and aoss nodes
>>       arm64: dts: qcom: glymur: Add remoteprocs
>>
>> Taniya Das (2):
>>       arm64: dts: qcom: glymur: Enable cpu dvfs for CPU scaling
>>       arm64: dts: qcom: glymur: Add display clock controller device
>>
>> Wesley Cheng (1):
>>       arm64: dts: qcom: glymur: Add USB support
>>
>>  Documentation/devicetree/bindings/arm/qcom.yaml |    5 +
>>  arch/arm64/boot/dts/qcom/Makefile               |    1 +
>>  arch/arm64/boot/dts/qcom/glymur-crd.dts         |  795 +++
>>  arch/arm64/boot/dts/qcom/glymur-pmics.dtsi      |   19 +
>>  arch/arm64/boot/dts/qcom/glymur.dtsi            | 7445 +++++++++++++++++++++++
>>  arch/arm64/boot/dts/qcom/pmcx0102.dtsi          |  179 +
>>  arch/arm64/boot/dts/qcom/pmh0104.dtsi           |   84 +
>>  arch/arm64/boot/dts/qcom/pmh0110.dtsi           |   66 +-
>>  arch/arm64/boot/dts/qcom/smb2370.dtsi           |   45 +
>>  arch/arm64/configs/defconfig                    |    6 +
>>  10 files changed, 8644 insertions(+), 1 deletion(-)
>> ---
>> base-commit: fdcd2cfdf0db0a8b8299de79302465f790edea27
>> change-id: 20250923-v3_glymur_introduction-e22ae3c868a2
>>
>> Best regards,
>> -- 
>> Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>>



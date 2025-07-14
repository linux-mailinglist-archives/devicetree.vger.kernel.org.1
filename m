Return-Path: <devicetree+bounces-195996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FE3B03C82
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 12:52:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ED1B73A39F5
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 10:51:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55B2B2472B4;
	Mon, 14 Jul 2025 10:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OjgikyEb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C4625BF16
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 10:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752489961; cv=none; b=Jq71A+7UfWuSCdsdg8d/uzqzrOlg6x8Xf9ln284C4AxG6+kA98hrUBHw+RV1hpKK4ZUfTi5HnXOaz8ug+SrUhrL8udkM/HrtJrqQdhuEGEppB/jNSRw0WbDdITd6AP5CEdem0Soey/+5nd9NaV9ZltG7B2dv4rlYa7C+DPj7rcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752489961; c=relaxed/simple;
	bh=GsngcRU9ghE95V5sobt8zThiAoxS3bXWswd84ZP946Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m9ZGEI5a40Nx8n+QhX32jDJzihH0ZC/MKSS51GwE+LX86MdHQDK4Cic6hYA6HcnqW1hyMXskOR+Yp+jqyS4NneE1Ad7gb+FXDGUfXXiFRcjihsrs0KjtLwnR/VFSf3KKnhj5sodKTvtgmzf2/4ZdZ6rDZG2HObWlVE1s9MsUiFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OjgikyEb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56EA1gsS018138
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 10:45:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NvkMX/SfCrQy1ThgqRjv/mjGrsXTIeTx9QKU6pkfYrU=; b=OjgikyEb1mjfDte1
	wtP/hpabasFr7CEflySVgYGJm5q0nSReES76WtUDsAjuVaGWqBaidYYc+ixjFAyW
	B1c+hS+/h5RiQtj9mbC1P/SNWh13uGAsktQ+25BjHlJO2Yp713g1b5IHML/EBtSm
	7GzjdcMCTjs4eqzESvGMBglzsukbovmXSYVcRUR95hJqGozKR0o4Tq+VKiIzkcFL
	d2fSI2y5SYSoWoqem9sJnwPZTiCFACI19+lhnsk1Jfkwn0Ld6LVvaYjNUlAeoL8U
	XKNcKYWWEsO5Gslfhw/4ku1cVVXMLjTp13cMhyuFWE+l4Q/IgOCH250QMqJZNIJm
	+gON1w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufu84b5s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 10:45:57 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ab7406bfa1so1397651cf.3
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 03:45:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752489957; x=1753094757;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NvkMX/SfCrQy1ThgqRjv/mjGrsXTIeTx9QKU6pkfYrU=;
        b=JALWC6jcs5gjB89sXLcAm37Kk+TmXZHdEUkeABmIsL+NzydZXW4kQHRb3Vk+dh3sHN
         6uZbRzHsgv6Vg0WWgxE0wbPuRwYn2G87wLSzvLZa7HMLFrCuzAOa6zagYQH8xN5PZixy
         eD1Pfe3D49MVQk0+cTQoYQJF8zY0bZ3yN32ZiTnPM2GLtxef588nOy7uVlVF1r/1L+Kf
         7FKHpHIuibYamMeXgCRc5fYPZ7TbMn+IPhv6cjF5CB+eWko8rzCO69sdS1idTvpljczB
         oiOJ3Hd8fu2uzYv+O9+NIm9MIpydX8y85zOy2hobar6v2ie/iyeG1C2FsX3lqxddje9P
         3qfw==
X-Forwarded-Encrypted: i=1; AJvYcCXMP9tSCuqO2pYDC0VFflPrQ8ZXxvQjvIzVSmRMJ/RrBhsq1phztUrIe0jgL1FGGWsbzVO1unwpq6iv@vger.kernel.org
X-Gm-Message-State: AOJu0Yzr5nIJstrTNc7S1C6MH0peIvYtFgiKdrIBtm2wV9UbdCWZquOu
	W5lIWrQxyP1hV5cHCB0TXG3WJ0wETWaYz0eUHsiNRcmk5XRjAJ8/7rVqmJk43UsUnQN8PhT6UpQ
	NOOL2aWUlFDnhEew0+tkDAJuyobILnz4UaoRlN4sS/k+SN0ZWucDFju1xWY9CuV3d
X-Gm-Gg: ASbGncv5hPvzjWd6Lca6Zx0HctWA5ZFF6OkDewDZf/1JVuL+NSMVurVMJKt1tS7F5x9
	mDbJdceoBrbiyXRLgknv7980avR72u4O3Pl//JbrX4Gt8/lza0JEn4mQeIpuTE5E161N7G3iwyj
	NfVR31Z/eLN7yiyJj5BXGf9hiAN4QfxJ7lSAyETVw0aaqnEVXJeuWaXDimRJs21f8WmODjK9u1t
	jJEJXbS+ygj572cFHvzDYIQdLz+OBaKtITmxIhrmDjqz4KjW+bwOyc3mGZJXdLA9va2EEkqfsCA
	QbpjD25XcHhAqi+Ao1Xexx3NIb790AcZk/ML+QFqzZCp++CVGGZ7oDEc+IoUnv40Tfbdrf5Q1Ed
	rhKjpYpeDKopGpxTFD8PU
X-Received: by 2002:a05:622a:2308:b0:4a9:a2d2:5cd5 with SMTP id d75a77b69052e-4a9fb85981emr61407251cf.6.1752489957165;
        Mon, 14 Jul 2025 03:45:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELfiE1hbm9W21cfQCQReZLaomvmcfube3hO9vSP/hdiOgPjCPkHWjuKc+mXLxmKJJITonrVA==
X-Received: by 2002:a05:622a:2308:b0:4a9:a2d2:5cd5 with SMTP id d75a77b69052e-4a9fb85981emr61406911cf.6.1752489956642;
        Mon, 14 Jul 2025 03:45:56 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e8294c15sm803864866b.117.2025.07.14.03.45.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 03:45:56 -0700 (PDT)
Message-ID: <e2b92065-e495-465c-957c-ac10db8fec09@oss.qualcomm.com>
Date: Mon, 14 Jul 2025 12:45:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 13/15] arm64: dts: qcom: pm8550vs: Disable different
 PMIC SIDs by default
To: Luca Weiss <luca.weiss@fairphone.com>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>,
        Thomas Gleixner
 <tglx@linutronix.de>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-crypto@vger.kernel.org, dmaengine@vger.kernel.org,
        linux-mmc@vger.kernel.org
References: <20250713-sm7635-fp6-initial-v2-0-e8f9a789505b@fairphone.com>
 <20250713-sm7635-fp6-initial-v2-13-e8f9a789505b@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250713-sm7635-fp6-initial-v2-13-e8f9a789505b@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDA2MyBTYWx0ZWRfXzwGO+W+/y64g
 g9cLTFXAs4Lkr2qajcEuvijDeUC3Xh0ZJS4Th6u1MPblDKcLn3RwZmkHi4uY4Lv0fq9cIjfBH58
 T1FwqpaGQ/bFhOZbDDGdtkhAWhIpmUtLZr0dioUMsXXY3J2FzgQdkieP/4mKXjCUhDjsPOoSLD/
 EnVCFkDPG7ZWHbfjxjbvl5H+IUFpv7w9QQIrhpAEUkhZegqZ1NbKaWiugirjOdY0PGiuzhLyLin
 679m9c2KsiGnuU0vpM7I0w0CNDRB/u0Txg07cWDvVt0J4QzMORNiIz9avL7u4/CZEaqzfY/ZeG7
 Hx635D0bx/kVoecbbSeoZbwXIBIYCyBzhywd6+U6d/h2jtzD01pm1ROUcvVEV4SOyDK+UKkIbcE
 WrwPRVfaizN7XHlR6g16XbudVhuD4UGUl8wT2wASpgB+Qhdh+qjuDmVy/nXsskJXtuhN/2pW
X-Proofpoint-ORIG-GUID: P6bTuonHjujQ5i3D7ct3MH-ijghY5lQ1
X-Proofpoint-GUID: P6bTuonHjujQ5i3D7ct3MH-ijghY5lQ1
X-Authority-Analysis: v=2.4 cv=f59IBPyM c=1 sm=1 tr=0 ts=6874dfe6 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=yhMgBbtfkmf45w4ReXcA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 spamscore=0 mlxscore=0
 bulkscore=0 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=670 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507140063

On 7/13/25 10:05 AM, Luca Weiss wrote:
> Keep the different PMIC definitions in pm8550vs.dtsi disabled by
> default, and only enable them in boards explicitly.
> 
> This allows to support boards better which only have pm8550vs_c, like
> the Milos/SM7635-based Fairphone (Gen. 6).
> 
> Note: I assume that at least some of these devices with PM8550VS also
> don't have _c, _d, _e and _g, but this patch is keeping the resulting
> devicetree the same as before this change, disabling them on boards that
> don't actually have those is out of scope for this patch.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

thanks

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


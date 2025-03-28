Return-Path: <devicetree+bounces-161577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 66639A74A10
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 13:48:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 44378188C6E8
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 12:48:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0D2D70814;
	Fri, 28 Mar 2025 12:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gATY2C3/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CADF17F7
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 12:48:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743166110; cv=none; b=HSXsAFCw4arqk8gnsd9nOB6w1eARBGvtArxL3E2vEgifilW3SwecErz7PJSgNOFb2oyIEvMpow/Wr6U8PEXNUA+LD4ezUxGxDjZ+Sl1XTBQmTOyWg8cdCbZZCQNBRetUsQHBEOTBBaY49yLIGm3PbJ4NZxUGfgO8KNgHjwkKRBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743166110; c=relaxed/simple;
	bh=Cel7ccYVMHPCCmgn+VUjmkFBM9POaj8XCxVQSuiVHQs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LQda7GVURIUCPqUhufsFiltY6LpdVeC9w7L6a8093jPKkq+S+VzmLjEj5eIKOGFMgk1Pm8T0EdIqFWGUti/9e1Nmp8uraTTf/abk4Y2QvFMEcywcvZ9rhKuFExsTW6cd+4DtYli5gdffYDGcl9VoUd2IVtDkxpe2UwQydpuD++s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gATY2C3/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52S56Gmj022576
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 12:48:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YV+Qy/uGiVgEIzLBpOldth8y
	WefTUWIPYLBPGQJW+5M=; b=gATY2C3/LSfRGxtDXJzWTguWBUxQPe+2785QE2UI
	pN4QXbpXc1d03w2F/sEh0HbOX7JSUSlW2KEU3mAs9bDB9KJm4RUw6B4TiVhQQHWe
	uImWvq/WyyGavC8We9QFx7+lj0nisJ8IUXJb48P4g1SysGvbVqBdKo+QO4vgC/c9
	pkamoBMe9tsOzwq3DwCWWOHKM9gbvbknbni/vIr0LeG7Y3AAdHWon+1YUI5yhT5x
	dqOgsi5VLrdISlV3E6w7K+fd+OdiqBqSZS3LdJY7dUeVXF5r99Bdn0WlfdW44u0T
	vmQ9h9w51SsZALSr9FdDe7rbGsgI3qSbmWf7O7zeyeYU1g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45kyr9sybw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 12:48:27 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5e28d0cc0so336643485a.3
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 05:48:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743166107; x=1743770907;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YV+Qy/uGiVgEIzLBpOldth8yWefTUWIPYLBPGQJW+5M=;
        b=s9tRqvR3avpGNZWNenC5ediD+gSWPY1/s6kAxFa/sqsaRwGY2fS3zyuVvjJWYe9mTZ
         9ns5ccI/SuSkYucXfcNZD7HnvKji8pg+1xIuChpT76QJN2mOoAioJjfVfCTEN/1KbRpC
         1QzTfhcwI8iNIsNz3FqHwRURdpMx1Jj6Vs6nXT/DGRJ4HooYO6O4L6ru4ufyNiQ0sDtj
         1a3aLetmjydJDyKKHXeUqDuWVZfgod+oYApd/UGHYwEBiCboy3T5XcfNinTATLeGsebJ
         HKg8ZWpKvL5vEU6svcK/Tm3gr4VuEfjDSxdxY48F6o7trFnKxdfB+6s8IFbGcP+ZGp35
         3XnQ==
X-Forwarded-Encrypted: i=1; AJvYcCX5AaiAnmQwhT8BxosCBB38YvP3wh/3n1YYiXfq/3+9OdsLIgl+TElaTqlqVW6EUlSzDGki9vELD0zY@vger.kernel.org
X-Gm-Message-State: AOJu0YyhSKxs+ylkUMkXdjszAmW4Fd93bMldXDWU8QASaafMqMri12BB
	zYoVI2Qs0Emi1YezagcwAQhcFGh/nLxls1cSbHo5bSTsB/eSI8JAXS5tFGfhKOA/8nk3abG7P/x
	n1czkPAimgCVWcwZnexrnXjGHWUNHwDsJhz7hilpame3g0HQ7d6+lmSVK8Zwf
X-Gm-Gg: ASbGnctcrKTyCIGGYDBn6rU5ppnHBv39sLAEva3+DaJ585Tt3NkfzrSaFM8CjCoqhrD
	pPoGFvkDcWnE/HufmlrAQVEIOJLCIzY/mDlyMuBjfi8lgFqwDMRQN0nEGf7JLETFpv2AJQ4OcQ2
	tyLGWwphNhhw8LtaaqwxrHJYyWl2CBVwYI6WDc/gIdFMzaU8MVr1ioA1KIYSvqkAp5oaboiyezl
	rp0V2heQCMqSJ4s78UJDcfs0cnfiA9ZbBzM/OmeJS51kbDei0HpXHH3t+BIEcbEzkE24KRNKax1
	2Jrd7vc5zq0wnT8tjkmO2YpTvWbPJmPDr96dz0vheLUDYrKxs8eNFX/RjR5XUNVsdK+HrxflWET
	cumE=
X-Received: by 2002:a05:620a:4611:b0:7c5:50ab:de07 with SMTP id af79cd13be357-7c5ed9fda61mr1196562585a.21.1743166106040;
        Fri, 28 Mar 2025 05:48:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSfe1qoUpF/M62b+DetpqtJpHgBbIPS3Qb5a03OKSWkEGQgYqUXvfCuAM6pN4enFdUj9Ee0Q==
X-Received: by 2002:a05:620a:4611:b0:7c5:50ab:de07 with SMTP id af79cd13be357-7c5ed9fda61mr1196558685a.21.1743166105567;
        Fri, 28 Mar 2025 05:48:25 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b095a0cc4sm289651e87.226.2025.03.28.05.48.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 05:48:24 -0700 (PDT)
Date: Fri, 28 Mar 2025 14:48:21 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yuvaraj Ranganathan <quic_yrangana@quicinc.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sa8775p: add QCrypto node
Message-ID: <gkjdjzmhtsr4la5ami4qnsqgrd3zzdvu46eyaxpwh2brfsqm6m@wwkuxljbfwa4>
References: <20250227180817.3386795-1-quic_yrangana@quicinc.com>
 <ea79cee4-8c47-4054-bd17-2097ada4e583@kernel.org>
 <b57fa204-d3d2-4b74-8834-3f2d93726a99@quicinc.com>
 <73ed6108-27ab-43ac-abd3-82656693404d@kernel.org>
 <4a205725-af49-4f28-ab78-7059451d66c8@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4a205725-af49-4f28-ab78-7059451d66c8@quicinc.com>
X-Proofpoint-GUID: _bU4oKoasf7mw3IRXEM86Z-9YpGFCCCi
X-Authority-Analysis: v=2.4 cv=UblRSLSN c=1 sm=1 tr=0 ts=67e69a9b cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=XIGxjvZd5PgJVFysyh4A:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: _bU4oKoasf7mw3IRXEM86Z-9YpGFCCCi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-28_06,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 phishscore=0 mlxscore=0 impostorscore=0
 adultscore=0 clxscore=1015 mlxlogscore=999 bulkscore=0 malwarescore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503280088

On Fri, Mar 28, 2025 at 11:34:58AM +0530, Yuvaraj Ranganathan wrote:
> 
> 
> On 3/27/2025 12:38 PM, Krzysztof Kozlowski wrote:
> > On 26/03/2025 18:40, Yuvaraj Ranganathan wrote:
> >> On 3/25/2025 1:00 PM, Krzysztof Kozlowski wrote:
> >>> On 27/02/2025 19:08, Yuvaraj Ranganathan wrote:
> >>>> The initial QCE node change is reverted by the following patch 
> >>>> https://lore.kernel.org/all/20250128115333.95021-1-krzysztof.kozlowski@linaro.org/
> >>>
> >>> Use commit SHA syntax (see submitting patches, checkpatch).
> >>>
> >>>> because of the build warning,
> >>>>
> >>>>   sa8775p-ride.dtb: crypto@1dfa000: compatible: 'oneOf' conditional failed, one must be fixed:
> >>>>     ...
> >>>>     'qcom,sa8775p-qce' is not one of ['qcom,ipq4019-qce', 'qcom,sm8150-qce']
> >>>
> >>> Not relevant warning.
> >>>
> >>>
> >>>
> >>> Best regards,
> >>> Krzysztof
> >>
> >> Are you saying this is not the warning seen at merging?
> > Tell me how it is relevant? Tell me how can I reproduce it.
> > 
> > Best regards,
> > Krzysztof
> 
> Below commands will show the above warnings without the fix,
> make clean && make qcom/qcs9100-ride.dtb CHECK_DTBS=1
> make clean && make qcom/qcs8300-ride.dtb CHECK_DTBS=1

You are probably running those commands on a tree where the patch was
not reverted. That's useless. Please update your patches to stop
mentioning the (outdated) warning and just describe your changes (i.e.
adding the QCE nodes, you are not fixing any warnings with your change).

-- 
With best wishes
Dmitry


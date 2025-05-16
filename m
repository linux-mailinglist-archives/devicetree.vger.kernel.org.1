Return-Path: <devicetree+bounces-178088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAA4ABA5C0
	for <lists+devicetree@lfdr.de>; Sat, 17 May 2025 00:03:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D464E4A4B66
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 22:03:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C354422F746;
	Fri, 16 May 2025 22:03:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N+RLfT1R"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AE122CBF8
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 22:03:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747433008; cv=none; b=c+0rhUrIX6oOeOu5IFVh2Z4cD2Ic9ZaBPBYova1YoWaQwVOkEXLNAvSIo0xyG3s7emstOSD5d9ELigEra483nOscn7RpRRGtkt0tsjUf2dAtryyQI+pCSCCCt8BeRPXXH6QC33UDQXtVnevPjWLy923ksKaevC9icp47A8Plzl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747433008; c=relaxed/simple;
	bh=ztUlQZWvvy4grTUgGp7eFDJUjwxG1eBxQAgPnUQyK1s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OhH9gBtJdBPe8NTXgxzjOrKW0cSrNL5SP4HyUwH5/V0HOzasXgsGY8xWYq4wAtZNGKOfvELNwQ0Ap/7N+WvzkauOyDnBHBL5TDvCXFltmE90NyRU7RGlNAMOgCPig6n4Tpvn7Zhb+g6X+s8Xy+KvzluNFaJRB6h2t5816yIShQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N+RLfT1R; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54GAjLWB024409
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 22:03:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3S9P+NpYn9J0BlmANLvmQ/cfBBGE+oF56fLZiQbC8ug=; b=N+RLfT1RHhzleWE3
	IhKCFSUyPw0+0spY87oL/NoMQe3hPZJdTT6l/VLehAShpGFenbicg6WubRy8xL8t
	u7sRQmORPpovMHAsg0r/ANDdsQNO81Pby/maVmhcEaKW5yIAvKFrNw/D+sj1b2PE
	zI+i5hJkQfrDBex6hyIvxc25HB6qiVrNhjEc7Cs/rDE6sZ28iIO+3bVuEMaxPHtD
	xzwNdXb/RlZdJR5PyjnGblCCoU12Dz2yUF4SER/3TZ3I3iD/7srZWCjEKFkiAyZN
	Z0S9Br0r5qpONAVu46vuQuPOLYz+q2H2lCzvtrBYV7y7Y8u+UQbLmOi7xjd22lLc
	xoMdpw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcn3esj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 22:03:26 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f6eba61cbbso51137496d6.0
        for <devicetree@vger.kernel.org>; Fri, 16 May 2025 15:03:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747433005; x=1748037805;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3S9P+NpYn9J0BlmANLvmQ/cfBBGE+oF56fLZiQbC8ug=;
        b=GE9hykFg69YCKUNoqtlAMg1mzIlL2b3+6hmk5urnMLgA6A9GJvKVrYLosAWzaIq3fb
         XSIF78YF2yTEmXjzk42TjNaahN1/V5LOQEP0ZSE0JCAitSHEVODo/6iaSDKmtDTa8Nw4
         II+6UkcdsNEFqgt5nIN0Ol6arFTQ9W3oGajG4Zva0HT5ukbv9rWGRjuZpRekq0VFW5Zv
         3RBFAiAXw6EPd+52z1Q15om2ZqeQLCbdVY6Soa54fB96EgVomqVQnzbAVfcl/c4UlNHQ
         ZYSkeX9khsMou06ZlytUUCajV8JTafGtRuMNpkKbFmoyodk15kqYxlwcWzabRGu8yn8v
         vr1g==
X-Forwarded-Encrypted: i=1; AJvYcCUBh/XaDmcdNAq9qWvzPpx1ZqEATUjw7oePZVvN6/qDkFyrjwp7rEfbWWZ1OPRRNpwT4AsBPps325gq@vger.kernel.org
X-Gm-Message-State: AOJu0YzNPHF8O2Ht3/OU4ZZwnGjU4SxMEMdWYfwBkQygjTkzUfnS6VZ/
	IiB4RMuufbZW5QS7qHHpQhnAW6Km4YT/WdzMG7+H/LEUpb+9q7JUmse4s1AY/Zd3Qu4iZnZGVSl
	rUsqYVGn2w0i+R28vThcXP5NjTrhwunaHIPjIyGTP2RXc2IbwoPx2G3r8g/1ETHEf
X-Gm-Gg: ASbGnctYeUfnxJbZQQLf7VLVH58ua88jY3SN2kKnCWvaTfATg4EEJlBtxIpjpKdp7kV
	hh9vTfn4Iy191n7QoUGxmKAaXDekLLHvU/JbN554r5GKMzS5sQtxJH7vYXbfNoGkmcYslEBLY8g
	u+5H6jWzoOcOeBtYY/vNmUy7tgMCs6XMFW6n7oNFVXKr7WILyDnYG6bx9kXT4DjrvSt0fove1mM
	/FEN7u+le23xo08flBvQGdD9UJavI0PP7u5Troli5qOZsXOXoW9t1ItwG0n66RKcb1RQBcktBjh
	2sw/gD4MqZ4KbRi/UvjamwV+qb+xkk4zoxIc9JwawWq6hm9Qjz4VMe254IKutUErB0fRrDn0NT4
	=
X-Received: by 2002:a05:6214:246a:b0:6f5:e2b:98a3 with SMTP id 6a1803df08f44-6f8b0887f70mr87908056d6.25.1747433004930;
        Fri, 16 May 2025 15:03:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWB45tewJlV5uXCDbTSp9IwILzgTOKAHZJHMtCm1r+ufsAFmrPW8gFZ/teJR4n3mhhNkaHGQ==
X-Received: by 2002:a05:6214:246a:b0:6f5:e2b:98a3 with SMTP id 6a1803df08f44-6f8b0887f70mr87907466d6.25.1747433004512;
        Fri, 16 May 2025 15:03:24 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e7017f8asm604298e87.110.2025.05.16.15.03.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 May 2025 15:03:23 -0700 (PDT)
Date: Sat, 17 May 2025 01:03:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_nayiluri@quicinc.com,
        quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
Message-ID: <bpc4tsp4kghqohoxm42qls7gzd5me7xrpodmazyhpvjjlkkay2@paoq5zygczdd>
References: <20250514-update_phy-v2-0-d4f319221474@quicinc.com>
 <20250514-update_phy-v2-2-d4f319221474@quicinc.com>
 <8ba99df8-012b-4883-af6a-970dd9f877f6@linaro.org>
 <f5e1510f-3496-4f5e-b093-623d3b4be428@oss.qualcomm.com>
 <CAMyL0qPH2r8oXOrNp3jF-nBJCRCZzJr8rYrHn+Yp0MHR0Wy-vw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMyL0qPH2r8oXOrNp3jF-nBJCRCZzJr8rYrHn+Yp0MHR0Wy-vw@mail.gmail.com>
X-Proofpoint-ORIG-GUID: to48fXqC9YNvY4oASnnjDMRb0DUpwd_M
X-Authority-Analysis: v=2.4 cv=HZ4UTjE8 c=1 sm=1 tr=0 ts=6827b62e cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=bd9M3xGx0OlNIZ6swnUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: to48fXqC9YNvY4oASnnjDMRb0DUpwd_M
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE2MDIxNiBTYWx0ZWRfX9MikG81fSzSs
 S3f27jQ+SEcHdpErhLA9b/W/6z3RYLSY98sAmtZUWbwEKC7etqPF/C0opd8GeyLFTiPxZ5/e5JF
 0NBFYSWgmv+0T+ruxb8rtRL3P28a8N5HlH2VNmLmE273se5305kRYRZzt8Si9o6F49frXqmoC1h
 eCBYrtDPetH/2HxzhxBnn74Wvob1vd4fd0bSkcWOIi/XMnR2XFZrOZd6eScN16lz52E0pFJlySn
 uv4LMSw61kXqYicQx5o0bYvvyQgG1R1fQA35aGYXWacknjnmxsYA4xIv+69ApK/uW09v4sdWGmN
 zBVUOauAY9qdAa6ZLCYAf2YzDwrJ04knNVOW6NghS0LcGBxRvimCatUto6Rw9n2X/ezVYEnszUF
 jUELqJjWARcrZajPzoEylxuiIY7c7/dr83qtVs2DI9ZAaxOJoHfSSeQhRoCT5ZGHuAlKqy4X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-16_07,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 suspectscore=0 mlxscore=0 mlxlogscore=972 lowpriorityscore=0 malwarescore=0
 bulkscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505160216

On Fri, May 16, 2025 at 03:59:02PM +0530, Mrinmay Sarkar wrote:
> On Fri, May 16, 2025 at 2:30 PM Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
> >
> > On 5/14/25 6:38 PM, neil.armstrong@linaro.org wrote:
> > > On 14/05/2025 13:37, Mrinmay Sarkar wrote:
> > >> From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> > >>
> > >> The maximum link speed was previously restricted to Gen3 due to the
> > >> absence of Gen4 equalization support in the driver.
> > >>
> > >> Add change to remove max link speed property, Since Gen4 equalization
> > >> support has already been added into the driver.
> > >
> > > Which driver, PHY or Controller ?
> >
> > Controller, see
> >
> > 09483959e34d ("PCI: dwc: Add support for configuring lane equalization presets")
> 
> Yes, this patch is helping to solve gen4 stability issue.
> >
> > and commits around it
> >
> > does this change depends on the patch 1 PHY settings update ?
> >
> > That I'm curious about too, but I would guesstimate no
> >
> this change doesn't depends on the patch 1 PHY settings update

Then what has changed, as previously it was documented to have stability
issues.

-- 
With best wishes
Dmitry


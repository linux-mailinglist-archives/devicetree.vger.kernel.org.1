Return-Path: <devicetree+bounces-239606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFE5C67421
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 05:30:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 69E804EAE33
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 04:30:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5BA328CF4A;
	Tue, 18 Nov 2025 04:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VZ/OZPBb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kP/OFhHY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5371C54A9
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763440239; cv=none; b=bL31SgDsecIEVKQgI9DmO5ItNg2DJTBu9cKbtu/d+LNxCmKivC4FWiOxL5VfF+DrlLCaEHNsNvtbPaDC9RmAlHNS/h2acDiBmGdbCDOAAPhanR5pUnQ0HCsePvPKeDV/0PQc0yATG4uIhwm10/ZsmuCkNCVC631JzGqS5smaChI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763440239; c=relaxed/simple;
	bh=yzw1GrdzJcigm0aCYVCGwl4m+lgHhKqz9BpKYqT/T1M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X/CkjdWYjimB8WvMQgSjiBGGcXFmKnlPixfpZ8N+BkSJ8yzBYGPdhP1q/q+xjXU1Vn0otRsrx+g/qoLNJoPw7ua78ULZ8Bs2d5q+JiTP0GsYV5FGWAAHuD3mpdDFZlzcmaR4ypZPVPpWhh3mjSVOL3Bzl92uzv4fiQSnUeP2GBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VZ/OZPBb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kP/OFhHY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHK9Uer384945
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:30:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RQJR728JMNm7YLg1MFMI4UGwy687LvMd3MTimSmFaQI=; b=VZ/OZPBbxboNnyhN
	6Y82o4Vx2GDZrsPrtep0WIIDeZ+zQ4K3xPvEfuH3eQWNYyOp9ggVv40hb6hdBMMG
	TvpdHGoXr2vrPplWc0IWqv/5tFikfb6AXs2+5UEOqj+fjuoINBzi2GweRw+yOfpb
	CQbDwsLiNTmX0sSzosRYp26tr1XlA2wfxGQgEQCcN/50RLNO8d6wTAlhA8MkRqza
	NUCsAJ0MWRk85QOjvoYkjcHFgd9iE5gqEQgIVjqzPJL/ymQR4YPDaYgTf9BrK7Bh
	oPsr+RaTKBXtHeUbF7TQ3ku5yyvl1bS/WBE+l8g76RT35c5PBtLtTvdOJtKEmlP3
	g+m9fA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agag8h40t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:30:36 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8824d5b11easo145807126d6.3
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 20:30:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763440235; x=1764045035; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RQJR728JMNm7YLg1MFMI4UGwy687LvMd3MTimSmFaQI=;
        b=kP/OFhHYNk58fAqAqoh4XI0TspyrQ5H/gbbOeLPcUK8ZdmjumsY7iuX9OIa8q2lNxG
         oTZm+pc9IygAEeRF2Y3Xld0mPjh2ASOmnL5/6RNVmeAlbvNQPsyWhOpi/fjAnUnN4dfI
         IG9FdCSyWWwempI1ViKUbE0i+bzX8JK9XKu1RvKCyuimx4YD5P28ovXuA4AFx+ki4hWQ
         pfPttP+fhJBctGCTai5hNmG8Q879Yl15lo41fEyMnJgVVBHDaefBPO/juaNEcmllNQaI
         ZnpqMqhLQ8xLRWiqicZnth46EXB6yw5jx9PYmNK1EP3h3T6khtOlivoAwSV5D/nHoL0M
         +6NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763440235; x=1764045035;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RQJR728JMNm7YLg1MFMI4UGwy687LvMd3MTimSmFaQI=;
        b=eIFddf6j+q15rGngOfPO5sCYyWMwy/AUZhBa/jsuXkCZI5JdVumhQyDsJTAXFVCo0w
         QuFIC41/xsndWJX9hTw9ZqprO1X+B9dB/xduMzJmkjEe7mDo+b/qb91HfqQ+4yoMkro+
         p/Cs4qOk53whKGTOrAywgjHRYny4rqcWkTvAcA8+FOAoRGyS6fwnyOCTl5+SWSYEuTYk
         FUvohESlSWtCG7A1QKDEb0o/gFMZ6WjCWFe8QrNjV9MNKhB+VHbn3poh92hZ2iYQunld
         e/SOeTQxFq0nQmhRP6IV7CZv0reeB94vWdFvS8q7ZWwAuXiX9RU/n5VhCbXW6RdHTPdw
         jvZA==
X-Forwarded-Encrypted: i=1; AJvYcCUomAsEobA6fzB8H3tYFzrDevGuuFfhRMx4ANy31qKujP+WzOqEkyQYtwxJ5pHAyaS3LkLEtdkWHyK/@vger.kernel.org
X-Gm-Message-State: AOJu0YwB2sjwby7whQaZv44JuoibAy9OhRu7yKnGz6xcMa/DgtEsdQcX
	ghpzXHczWNnYHtFQONBupHBSfuR+jGuEvBNPJe/gGMXdzKkVAbOH+qjKSODLam2Rjh0zil96g2/
	aIccJbUNs9skg2UmstVsJjGUuwqATgGlZJNmVRDqOK6b5CQNiD3mHB+8wLL94ljtg
X-Gm-Gg: ASbGncsBYMcJOkNULgPdG4DNtCXBknvwwTF/5PmQd8cnVGj7d9l6qusmEXm6d4CR/E+
	Suc00iGAEtmcSc+whF2N7ffwE6YP41x9l32DsbCSWlRh7qxcylOBaMggRrS3/2gyxgKgvIw13r9
	/EC/km4YXxpW+c5RRzGzzAHhGF1vo4wi+BRg9aksfZwSCMnQWMSGFhrP0g0EemzC2lZEaa+tvL8
	cCllroi59mgNkeEbHG5RAB0SQkBxzW6C455VeMUUehThFuNlgL9DO0+d7vy6LL8NAXJhWwOZ8Ka
	mROf6L2hzEsQJ3vWKokW3yQD2NZsdSRglJNa1Se2G+m++medsHPtQ9KNpp+eBT30PzXa7kiG8bo
	pZ0L0erxOqwSzR52IePe/uwrSdYasPDnmbmqTz+pUWk7KFm9Ua/icUbY2wOBRsUic/pRMbgB0z2
	jausGFkgPKIldq
X-Received: by 2002:a05:622a:49:b0:4ed:6e79:acf7 with SMTP id d75a77b69052e-4edf212a433mr211296941cf.41.1763440235461;
        Mon, 17 Nov 2025 20:30:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGi1Dwkn9v+3PQte62EIHoN9RnD7aNElhuqtkrJPAElhnS5vCrYuccx/wtlZxkvqHwY94rDnw==
X-Received: by 2002:a05:622a:49:b0:4ed:6e79:acf7 with SMTP id d75a77b69052e-4edf212a433mr211296681cf.41.1763440234969;
        Mon, 17 Nov 2025 20:30:34 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595804003basm3676196e87.56.2025.11.17.20.30.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 20:30:34 -0800 (PST)
Date: Tue, 18 Nov 2025 06:30:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: =?utf-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Adam Skladowski <a_skl39@protonmail.com>,
        Sireesh Kodali <sireeshkodali@protonmail.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Daniil Titov <daniilt971@gmail.com>
Subject: Re: [PATCH v2 4/4] clk: qcom: gcc: Add support for Global Clock
 controller found on SDM439
Message-ID: <6kzcwl4jlsdnpnyafpdhzczx4olckjou4jqt4ho2dnjfm7f3ga@wszxnzk72hz3>
References: <20251117-gcc-msm8940-sdm439-v2-0-4af57c8bc7eb@mainlining.org>
 <20251117-gcc-msm8940-sdm439-v2-4-4af57c8bc7eb@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251117-gcc-msm8940-sdm439-v2-4-4af57c8bc7eb@mainlining.org>
X-Proofpoint-GUID: fhRIRc3nkbEkW1NlT8cCwtdwd7wXUag_
X-Proofpoint-ORIG-GUID: fhRIRc3nkbEkW1NlT8cCwtdwd7wXUag_
X-Authority-Analysis: v=2.4 cv=G6sR0tk5 c=1 sm=1 tr=0 ts=691bf66c cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8 a=OklN4PO2VwZmQYoFi2MA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDAzMyBTYWx0ZWRfXwlGMlZ6+pexm
 1MFTQ1J4KfvuyyOkk0ak8PWfH/iI7jk7u2bnjpk8POPBOMjmeNoxuvy/DJ29TGL23fSgz822O8Q
 x7vecAcH8giJAzhhaF4dYcP809+hwjoJFV3f3eh8OF2UqttIPO5CCgUy0J1/LUKtTesTu3hKzyf
 v7ZBTDgLYU2I8V3NdOnUMu0hifNMF6cdOwSuwnpMg+/XsmJwPj+Uk+ZJe8mMPl4DfACtgLeFCOm
 YxRyYKoZddqFj1HRMQFT8n78/9D7/0eWD8Zo7V2RmV+Lbn5X4hTYpIzTQTWfdzxyPSXXihx9y7e
 M3Mk9iBKYntPsKDPl81jlI3GExlICKviMaoi3Hy3zcVJ9sbOb8n/dQ96N8PqJj2dAj8koDPGtSp
 fZnR4wx/IE6ZtfmWHzvrkaDRGkHGdQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 malwarescore=0 adultscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511180033

On Mon, Nov 17, 2025 at 05:57:09PM +0100, Barnabás Czémán wrote:
> From: Daniil Titov <daniilt971@gmail.com>
> 
> Modify existing MSM8917 driver to support SDM439 SoC. SDM439 SoC has the
> same changes as MSM8937 SoC, but with different gpll3 vco rate and
> different GFX3D clock frequency table.
> 
> Signed-off-by: Daniil Titov <daniilt971@gmail.com>
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>  drivers/clk/qcom/Kconfig       |  4 ++--
>  drivers/clk/qcom/gcc-msm8917.c | 49 ++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 51 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


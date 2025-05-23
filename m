Return-Path: <devicetree+bounces-180097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2D4AC2974
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 20:18:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A95A189F2A5
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 18:18:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C186299A8D;
	Fri, 23 May 2025 18:18:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DaxsL6kt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1140298C0D
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 18:18:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748024288; cv=none; b=HXe7Vgiumdb3TgdQ8ySkUOs9i1RviBRtvfMeEC7kkMlIMlm+3Ylb3Pm4ArdhliNAHgazviNY4qhikV3MUi9HUXHiCSSh2BDqy7BjesKFru1fsPCHjkvCJsRvWEh5WUaqKeqwpC+pLOkomnyRmdnloHqEAuY39E748U60rpikXag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748024288; c=relaxed/simple;
	bh=QDWzARgH6DI1WqTflEHp5w74dOKGn0f4Qtwd5OTOxsM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fTZ4rnb7kypyQsbIvix1VN3SsUqKGA/7z143H79pVMS7ECbiWiRDgNqoALjV777yk4c1v3cWwetty6G7vVTfmcyoZSOoenJkvFqJKz8hx1ggRs2+dsZX3MObE23iqcapVdCOVphRmZ/CWDdgRcR/6dpoo0gmudh/hHn5DwDyzeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DaxsL6kt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54NBsCRK016582
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 18:18:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=AQZd3v4cUfKzFOpAc2pmQho6
	OoDTUzX1hwB/aR2l5u4=; b=DaxsL6kt70D2ncypJJHe/nyChAJav63Bpqjba8jM
	+Kn3vK0Y3DC4XXQwRYF8yz+t20qjzTPRLnRn1/gwFfnBaV9l6TUrKV5Wu00PwDPy
	r9dOMiMW4xJEz3ggLagMHpXMesxZYKwcX/ZV45/3M+SaNuYb/gRedzt2q8SHG32M
	tefMxheqtkQmfgj6hvnQ0EAB80GMzY3tLPUtcAjfCNnzHtm52Zs5N8wIYYeipeMS
	TrkyWJx6qR72TImZmZp6cBxC9+zmSRGnVVhfjaMbvYviCvMqocoMFbwuQGz/UosS
	0v7zZqyo82jZffknehBxFkY6Lb9oJIvsqiAOiPq5sXXkmw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwfa2x77-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 18:18:05 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f8ae49fd37so18993336d6.1
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 11:18:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748024285; x=1748629085;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AQZd3v4cUfKzFOpAc2pmQho6OoDTUzX1hwB/aR2l5u4=;
        b=EstGUDgL0dEu0sRIa+BR64y6rcK5dfZsE3QEvqsaRJUc+ukR8R+9c4D+BogriIBGd0
         +nqjkUckYW50ovy/M4RMhIxBi2EiKD1skQAMtxPFI8mw5e6BfEFgZ9sC/ksP0o6sfis1
         mJjSgxOeTRP05OVqIy/aaQTEmBtfAXR7n9VmP7QFqbQSfWafpJmtkF2MKVifjsPURw3v
         c5C89hydUsTYVetVF/3rcUKxpTkkyWNuuQ2LxWjKbCKwzGpYuLWCN/fh4TBd1jbTpUzS
         OMv3lE6WeozMQ9D23ms7eg2yIpteEwKYRgmitI5YO4aZyQvikfDg5p9qh25NytjZWb7j
         4w3w==
X-Forwarded-Encrypted: i=1; AJvYcCWbYKcSHehjHP87gsHJfIcpLJqabcZZGS054SYmS66MjSHWxCcmrLJ3AuC3DmvFY4+SuNV/0EoF4oQn@vger.kernel.org
X-Gm-Message-State: AOJu0Ywrf+/dIrqVGBBqFMo0CzgDZbIAdwrAJIalOLAXT9y6ts5JO6yY
	KkQqB9mXG8StEo03kgPVAot1R2vLnP3ywZGKbpK9jL6GEiU5EkS5lZ0JuzyxbdBAPTcTE5+7h+i
	xzJvdL8agD91ldLWHPKmTYkEdDBI21iM0nYjqtj42CFj6rmXCQxE79pqWvmwpItUj
X-Gm-Gg: ASbGnctaEKwQcJVUcd5twAdpbmsWTXyE9XqOi/GEwm2SpuF37ch3qFgwrjRs6pj8Nmb
	cjIUXlIbbFv/p1ulzN0O5D2iApGxyHR/SIV8RQdgGnbqzPOX45R3xbO+8o7lNQNLk/gSXmmPPY9
	qdAOQKrkSouV2A1GiOmXRSkCAKNuoZ6xSTz1eIuEGbVggWiZ6XGqInxcc1q09DSERzBhimFRBrW
	j8Y6WOkOoGwwQOkKlyGC7OJr2c6Al9M4RlDil9i6clBME6v0ycC13zyL8OD8NRol32vGrXieAlD
	z1uIDHRFCJ0S76lcUdxpMe9giXGRz9XtuyeQrmduJJ2PDxnC/EeGGddYjJ8s+xtsUBHgjnp2sIg
	=
X-Received: by 2002:a05:6214:da9:b0:6f8:d40c:e3a5 with SMTP id 6a1803df08f44-6fa935f6c77mr68911366d6.22.1748024284994;
        Fri, 23 May 2025 11:18:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGWZkiU6lLlMr1LrdN5ST6waLhFFmNiyS0xV9thJicOnto+p9teepT8E2kgB5uR0Pk4uiQ9sA==
X-Received: by 2002:a05:6214:da9:b0:6f8:d40c:e3a5 with SMTP id 6a1803df08f44-6fa935f6c77mr68910926d6.22.1748024284604;
        Fri, 23 May 2025 11:18:04 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328085cf9f9sm36921311fa.94.2025.05.23.11.18.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 11:18:03 -0700 (PDT)
Date: Fri, 23 May 2025 21:18:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 02/10] arm64: dts: qcom: sdm845: Expand IMEM region
Message-ID: <uxn7fef774c3c7wzyg726zsr4zc3we6bmhomlappied6rkvkfd@wmvqrcehbcgs>
References: <20250523-topic-ipa_mem_dts-v1-0-f7aa94fac1ab@oss.qualcomm.com>
 <20250523-topic-ipa_mem_dts-v1-2-f7aa94fac1ab@oss.qualcomm.com>
 <fjx7p2ab6c3qvwakrpj3zsjnhvjzwbfszvuwp6edf4rlehxdih@ucovc3r4fdfl>
 <2bce3b88-8810-412e-8115-bceb73d6e8d9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2bce3b88-8810-412e-8115-bceb73d6e8d9@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=V9990fni c=1 sm=1 tr=0 ts=6830bbdd cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=6IpEqP0hCIXZkiAodesA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: U435-8RSB0aoty2KisaXY8L8hljIYZvr
X-Proofpoint-GUID: U435-8RSB0aoty2KisaXY8L8hljIYZvr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDE2NiBTYWx0ZWRfX0ak7wK2cDptc
 tlwOJzIc3WwyhCrrRFTlxAePsUBdcKS1KYoTJ62QUngPdXvJAmsPua05OSHPfSYBW57gHSBr7HO
 itU+fj+7IDBWN/6ETe1bFzeadrXtzNJiH8nwBAQhnPg3RYx0jxMFRPf7rdomRfxTPL7ea1q2NQh
 gmQHJXzFFRzuWbfdauDv0jcSBJRel5551RhkRwkBPTNwFFn5VhtmjrXQFvPAMRtw/5ddXJOGhio
 UKKB32OxVfcS4tT/xwKH5dY9Ovie3ZoehW7ODZ3AHBKZhQsWOhJ58HgRaaIGaUd6AeEZkI7J5fC
 2neK9n4R/QyMknXGE1UI16Tntq5bCWuV/lBtc78mYJwYDPXnjWe+zdZB73j3T9IsJ8BJ9cIKuzq
 9GxeA5OQH89TzuGAYCMaY8lql4CkZxxtFmOZ8NRM5sOEArDL0vTF7nYCwbiTgcHtrQC8nVJF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=709 bulkscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 mlxscore=0 spamscore=0 phishscore=0 suspectscore=0
 adultscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505230166

On Fri, May 23, 2025 at 08:12:38PM +0200, Konrad Dybcio wrote:
> On 5/23/25 12:40 PM, Dmitry Baryshkov wrote:
> > On Fri, May 23, 2025 at 01:18:17AM +0200, Konrad Dybcio wrote:
> >> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >>
> >> We need more than what is currently described, expand the region to its
> >> actual boundaries.
> >>
> >> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >> ---
> >>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 10 +++++-----
> >>  1 file changed, 5 insertions(+), 5 deletions(-)
> > 
> > Fixes: 948f6161c6ab ("arm64: dts: qcom: sdm845: Add IMEM and PIL info region")
> > 
> > BTW, are you sure about the address? msm-4.9 agrees with the current
> > one.
> 
> we talked offline, but for the record, it is intentional - parts of IMEM
> are not accessible to the OS and were previously not described

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry


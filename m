Return-Path: <devicetree+bounces-240096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F571C6D4EA
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 09:09:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 3FDD020852
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:09:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07C6E2F12A5;
	Wed, 19 Nov 2025 08:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WjNQsPAx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MS6Mykr2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A19D92E540B
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 08:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763539725; cv=none; b=NR7t5yrahF33MIiakc1Nssu4iH7pQNBq/1uZ6osHnMQqtRXyhNzJgSgQDtlDdmSKPakBCQ/mY8Crlt6NwWgMANxLLILbD/x5fSXvG/Od6h4L9douZMrE8wfL4AMMTxpybGjDlHw45IZT7y6SjXf3g36ziQUn6tSt3LgIyQ4GKmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763539725; c=relaxed/simple;
	bh=iVQAJWJvb4gjy4VYztPqNnOoxXan8ns5rqDgzMZ9IJw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Nol7k+FbvMfzFS/UiGkLvpvat8RX5n8g7bGAorNniumdY98Ug31mPWTkNbc+6Niy4jWL5RLd4fQMVisNHD9FcCLK9mQFd2lo6JMyhdQ4UCAluk1dkCJ1DKmC/9syKDsXvFz9WOqlhRoE2GZuEAPfL66hUr/VmB8TrWI+9RK2+Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WjNQsPAx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MS6Mykr2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AJ4Xg98885023
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 08:08:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZE32NuQXZgoNkM+9IMH+83Cfpr6ir7auWjA0cBwTRtQ=; b=WjNQsPAxHybxpDC9
	C8NFkehm13gduVdFU4aUNEtspwE8F34dAdxqVaCNyGMTAGFRtlOUnXeNMIF5HfrL
	qjj6w80rYrHi2FJDprEEno7hx98kmnpKCS8+Mt3d5cjDQDYSrN+/61YIQ/srce6v
	d4JUmWDp0AZB0D9RkpO1jn5Oghg8pnFkxuKmfScgza4ug7+YqkQB1dGZw4QbQzGx
	vKMYKW3rCNFgTvnxC01Yf8qG2Tc29F5Wkvn7fNrJVu3+uIcyg+DiCaiuL3OoaMnL
	aticmDPcQ+QZkezX1uIhfdmJrYR23o+YnvjVByIrLa4L+JQM75KVkfzno54L0l/m
	QKac2w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ah6yq8jnn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 08:08:42 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee09211413so119093771cf.2
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 00:08:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763539722; x=1764144522; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZE32NuQXZgoNkM+9IMH+83Cfpr6ir7auWjA0cBwTRtQ=;
        b=MS6Mykr2zfs7T2RddIVzka1Rc9U0qOBuBXUsEQUuO623pIBJfExiIU33YiZ0VjsbDG
         /r3dZe3q6bibgDCvvziveWpY7m+XEz5kX3rhqnkFN7jPt3NxLuw3du3rB1BFS6PWTKfI
         SBJO4SzgKalTL6y1iAxv/luyIcmrKEuvwD+Cc5LW7Xhh0UybaBATBgT/qVZ8tllH2oME
         8pu73PDS7jcJLUke0n6HvQG6hot0Y/G5YjIIDS6VRt40SJBvJsLCTBa1GPcxPRl+O3+9
         783x0CTn6HyFIO4rRqprZKzYVl3zhCqZxapOTpvX72iVJmzQSCVKoFL9IXUDDUm+M77n
         hyLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763539722; x=1764144522;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZE32NuQXZgoNkM+9IMH+83Cfpr6ir7auWjA0cBwTRtQ=;
        b=jGw9LPL8tXWns0oKmeZ7a/Yn+TVQpJqmTmy7Chuqkzesj8enhATuYpgbKo5k2vEjkS
         7NTufkEt2m8bKEJhrUHMfFrSJumdcveTcIYqk2fVgFGdrJbrvmvkvQyubCPW6J1mGmv6
         wzcgCjNCyf21iewDc5UO53UpHD2svGwxzRgXA7COxwkaFevQJtT5iYni6McbDBwbNZaY
         iynCJnCH5FgdLS9xSZDBzGgb+j8Fi/8kaqnOB9yL57PF0qHJzvV2LwzwdyxQHzVHWFDs
         A+z3HLbTxgWO3oujpk2oynR7FPkF6qpQUz1FvDLXTreOEDjCjujWlvyi2mVJaa0nKRhz
         nD3w==
X-Forwarded-Encrypted: i=1; AJvYcCXuH6Jrivq6daYyw7wfODLwP0L5XAOTOrPorpGDpYy1fdIwmzUSSif4v8DcA7EGk24YW0MzzlrauzZy@vger.kernel.org
X-Gm-Message-State: AOJu0YwKY+8fjP/VHHlMvSUnCPVOlKH0xSNhrEKWKhKqeJxgBnmfPJdN
	ufw/TILDb3/HjWO8qse0V85XDrASm+YCfQvdxVprgiqCeyCW7MnJiFPDypUQO7Oxkg4wJ036kJg
	Soug1FttyOYLaJK9ucND3CnRFptX0ykIQdKVf5UyTxQNSWH8QcUgCl/8zxx9BxGe3
X-Gm-Gg: ASbGncs5WrNOimgO2WTvQkJOed8nH0YTFrviSGYAV4RRm/hO4x4R9EDUVqajbAwHTZG
	F4xyRxtJexX2ZI+JHL3XvFfZD5TeIiIuCE4JxBvd/tYe75TzhmqzTre1LgpHHbMtchsv7GLk93j
	SnxLRFtp6um12f+zJQHfV36D5EhgOhWFcQaCwBndFsVLmTeEDAAJkBS1RYknyzTB4B76FE8hcFY
	JnQfiNtH5fMvxT7axeILHu49twZOaG4aB3I9r/rMyVmSdVfhOqKuiUOXlS8Q5Pit7MNyTz1xVw0
	0T5v4S2cj5t+pZd6hEqYDYYTQELGE7JLTNC1MylGedY7Oov/AQ7l+uZbL264jBezYRYfbrcFjdf
	2nfRdPHzC4nd+936+4BNmMnhsuw9++gTGs9GGylR7Se7DDaMIpizd6Qfjq7LkbFiVRUyeHKyXL9
	5ieKjagCTJ0enBvph5zQz8KrM=
X-Received: by 2002:a05:6214:2683:b0:880:7095:4779 with SMTP id 6a1803df08f44-882925d3a3dmr239901206d6.1.1763539721788;
        Wed, 19 Nov 2025 00:08:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGahG0FCWA+3RqdRN0MzRKuapkMAEdZ+4xpvS4YDKSNwgss2MWvYXX+jb/qDDbY7tcZlzsUyA==
X-Received: by 2002:a05:6214:2683:b0:880:7095:4779 with SMTP id 6a1803df08f44-882925d3a3dmr239901016d6.1.1763539721308;
        Wed, 19 Nov 2025 00:08:41 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37b9ce080d9sm39771591fa.3.2025.11.19.00.08.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 00:08:40 -0800 (PST)
Date: Wed, 19 Nov 2025 10:08:38 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, jingyi.wang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/6] clk: qcom: rpmh: Add support for Kaanapali rpmh
 clocks
Message-ID: <azq4qrjxn5tysunlzw6ifh7e6cjdu3gdpe5hfqq7otsypry3gp@zo23l52t2xxu>
References: <20251030-gcc_kaanapali-v2-v2-0-a774a587af6f@oss.qualcomm.com>
 <20251030-gcc_kaanapali-v2-v2-4-a774a587af6f@oss.qualcomm.com>
 <swma6lyjfmyhl5ookdzvpjn5qresgsze5wptg45jfgj7ub6a4t@bdgfstw6gzoq>
 <380aa79f-f334-44db-9527-85247f9735af@oss.qualcomm.com>
 <2jfvrt4r7ddagh2ztbad7qnjpcvulcrtr3ekul6i26qg6zcd44@dxfhl3265okx>
 <cdbfe200-314b-4185-bb58-d528ed317610@oss.qualcomm.com>
 <j2fwz5vgzydi4dvtzegmwz25rukazf2clk5ga7ikvv5umm2jcw@edgrznbv24hq>
 <ec54cc7b-b0ee-4aa3-b9ee-276e5b3b5c05@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ec54cc7b-b0ee-4aa3-b9ee-276e5b3b5c05@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: TvrCx6rzwGTjcoe_Gh_gYSqBUaNU2ZTx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE5MDA2MiBTYWx0ZWRfXyJx52FyjIjvN
 alNctkRzTE8DjdbQwvfv0kIUuCu6voU6uQTEMbGO/3/cjJkU3OfmKr3yA95ScKd/UfnjrYaUpaY
 IeLRIjWj/egLOwSEN9t41vIyWbpP5wVUFXoEoAI5szyvV2PzUy7Vg2LSfcHxwLiQZPbbNclTbyV
 KJDj+lfY7JlMzgBIJC7ZBf7A0rjBa5i+vMJgMi3JvixxnpmIx/IgN6yhTvwXZgZIzOEjnsuJmFV
 Mpi9UOxr93YnS8MTfW+FjN10ZXXN+BzpJ7Lbx/3zC/KGbmoKCqWmJX1LG9g+MFNothsfYuM7Wwu
 VDTU0DEcMgq+7+l78mrpbVQgjMhfd/jp6WlDgFV2Y8o+BHJQWKhYfTJHrn8uQrAUy2PchkK2n2x
 UgdgmaFTqG+cVmPceTOvhE2SA/kwtg==
X-Authority-Analysis: v=2.4 cv=Ut1u9uwB c=1 sm=1 tr=0 ts=691d7b0a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=trDEj9vQGdMS652gEMoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: TvrCx6rzwGTjcoe_Gh_gYSqBUaNU2ZTx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-19_02,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 malwarescore=0 adultscore=0
 bulkscore=0 lowpriorityscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511190062

On Tue, Nov 18, 2025 at 10:18:44AM +0530, Taniya Das wrote:
> 
> 
> On 11/18/2025 10:04 AM, Dmitry Baryshkov wrote:
> > On Mon, Nov 17, 2025 at 01:28:46PM +0530, Taniya Das wrote:
> >>
> >>
> >> On 11/14/2025 4:38 PM, Dmitry Baryshkov wrote:
> >>> On Fri, Nov 14, 2025 at 02:13:49PM +0530, Taniya Das wrote:
> >>>>
> >>>>
> >>>> On 11/11/2025 4:16 PM, Dmitry Baryshkov wrote:
> >>>>> On Thu, Oct 30, 2025 at 04:39:07PM +0530, Taniya Das wrote:
> >>>>>> Add the RPMH clocks present in Kaanapali SoC.
> >>>>>>
> >>>>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> >>>>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> >>>>>> ---
> >>>>>>  drivers/clk/qcom/clk-rpmh.c | 42 ++++++++++++++++++++++++++++++++++++++++++
> >>>>>>  1 file changed, 42 insertions(+)
> >>>>>>
> >>>>>> diff --git a/drivers/clk/qcom/clk-rpmh.c b/drivers/clk/qcom/clk-rpmh.c
> >>>>>> index 1a98b3a0c528c24b600326e6b951b2edb6dcadd7..fd0fe312a7f2830a27e6effc0c0bd905d9d5ebed 100644
> >>>>>> --- a/drivers/clk/qcom/clk-rpmh.c
> >>>>>> +++ b/drivers/clk/qcom/clk-rpmh.c
> >>>>>> @@ -395,6 +395,19 @@ DEFINE_CLK_RPMH_VRM(clk4, _a, "C4A_E0", 1);
> >>>>>>  DEFINE_CLK_RPMH_VRM(clk5, _a, "C5A_E0", 1);
> >>>>>>  DEFINE_CLK_RPMH_VRM(clk8, _a, "C8A_E0", 1);
> >>>>>>  
> >>>>>> +DEFINE_CLK_RPMH_VRM(ln_bb_clk1, _a2_e0, "C6A_E0", 2);
> >>>>>> +DEFINE_CLK_RPMH_VRM(ln_bb_clk2, _a2_e0, "C7A_E0", 2);
> >>>>>> +DEFINE_CLK_RPMH_VRM(ln_bb_clk3, _a2_e0, "C8A_E0", 2);
> >>>>>> +
> >>>>>> +DEFINE_CLK_RPMH_VRM(rf_clk1, _a_e0, "C1A_E0", 1);
> >>>>>> +DEFINE_CLK_RPMH_VRM(rf_clk2, _a_e0, "C2A_E0", 1);
> >>>>>
> >>>>> What is the difference between these clocks and clk[3458] defined few
> >>>>> lines above? Why are they named differently? If the other name is
> >>>>> incorrect, please fix it.
> >>>>>
> >>>>
> >>>> Dmitry, my intention was to make a clear distinction between the ‘rf’
> >>>> clocks and the ‘ln’ clocks. Since there could be overlap in the
> >>>> numbering, I added prefixes for clarity. I should have applied the same
> >>>> approach to clk[3458] as well. I will add the fix-up for the same.
> >>>
> >>> Why do we need to distinguish between them here? The resources in CMD-DB
> >>> don't have such a difference. You'll select whether the clock is RF or
> >>> LN when describing the platform data.
> >>>
> >>
> >> It is more for readibility and maintain a direct mapping with the PMIC
> >> clock grid. This way we can immediately identify the clock type without
> >> cross-referencing desc as the clock mapping here would indicate the type
> >> of clock. Yes, the CMD-DB name does not reflect anything with the names
> >> here. Please do let me know your suggestion.
> > 
> > I'd prefer if variables reflect CMD-DB resource names rather than the
> > actual clock usage. In the end, platform data does exactly that - it
> > maps usage to CMD-DB resources.
> > 
> 
> Actually the grid does not reflect the cmd-db resource name at all, so I
> do not think that is the right approach. Let me move to completely
> remove the 'ln' and 'rf' references and refer them to 'clkN'.
> 
> > Also, if we follow your proposal, we will end up with ln_bb_clk and
> > rf_clk referencing exactly the same resource, causing possible
> > confusion.
> > 
> 
> Sure, Dmitry, I will move to use clkN and remove the suffixes.

prefixes. But that reminded me: if you think that it's worth it, please
correct existing entries to have _a_e0 suffix instead of plain _a.


-- 
With best wishes
Dmitry


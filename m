Return-Path: <devicetree+bounces-222180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 057F1BA68CB
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 08:18:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A9D673B02CB
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 06:18:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F55223C4FA;
	Sun, 28 Sep 2025 06:18:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="amJK5il9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD921E260A
	for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 06:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759040325; cv=none; b=gfhIIoBw737tVsAWs4G39XdBI5X+yfXXKb6IPiIHvCsKFixYo1bGV0tWmsOaoAJ4vDtmr8XPKh6yIviFMSjIzCAQ+TMfvIQqbqaSJGISLQ7VwtSCuMwjInAKUPHRoerCs7z0tm0oylRlfWTYIAIp9378QiJbk0NceToo3wXwRtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759040325; c=relaxed/simple;
	bh=Z0F6UJVfn/LlfQdT98ctPIYk0EawlOJ7ctowoPosqNg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mzP/sBs2jQ+n+7Yh60bfeEUNXbfd9HutSM1ZBBju6MLELd3xkWeVQ7BpMhLApEt3sT3dbTdMe4tqRPcwIXp8g2pT/R2hIJRcw8TZWG7c5BAAK0hV7UZsyHaZ2HVAt4Gy3gCveQa7jgyU4IclRUqFlOqUPO+kSQkXwUQ5GroZYz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=amJK5il9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58S10SHQ004282
	for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 06:18:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BSwnv3Xkvl+g0UVXHw8KeGPp
	tPgeAtk4zXgP6spaKt0=; b=amJK5il9ARGFz5jw0o0GJTZ6HiZdmQ1e89a03DfS
	QMoU0c3WRmNzOZV90MqKOQ60Cx7fuh2UX5DoFeOjQHFfI3iOze5RAO5+GCdLmklh
	xaXoLLnnc6QBN3BPyppFR4BFz962DtbOUOwIaQ1V2zKkDL3ur3wHSYDhUJMhlRfH
	eoMI75BRw6YO5gbY4+L2oTYyU43oRh8zfjLPQY//LBXSaPKEt/WRkb+TYs9LwKsm
	qQBMj4mdeRdo/nO0znbOFI3CWZJTbxjbwlak+fag56RLVpjhrQ0NYXjnb2lPDUpU
	37CbQpUXT2l/+tCpZuuoAXEwocAl5aukMlCMt6whg9LH6w==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8pda2uc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 06:18:36 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d8b8c3591fso102487481cf.2
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 23:18:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759040315; x=1759645115;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BSwnv3Xkvl+g0UVXHw8KeGPptPgeAtk4zXgP6spaKt0=;
        b=Sy7GP2L8Lh7fL9PROWPuzxePDj/SgDteDdNpqBLy4AaDxSaOnKCuq5NLr/JA7GRo0G
         x8t1LxmMcOhUznsZ53Fj/vE8uJZOCubCgj43P8J7/vA4I/SqZyiwhnnhgVKOUDAX6zXS
         qasbIXtbrSLU4FijOrOgyqeO3VACRflAQs82HDbRupHUTKCfSldrexEFd3ju2oE47+te
         9872xAuUwjt3bBdruNZf9z6smxCZ8j4CrLxPg0ZF0r+7LJFzcMrCVKxF5NbpGq0WidAB
         5Kw4NYfnsqTs2lV2CvrfpWIY98Aj78okxaXvmH3DFPCMNi70s5G+1tgxiTy7FKJHTinT
         hjCw==
X-Forwarded-Encrypted: i=1; AJvYcCWOP3ct09w2AupuiK8DFOyBdJmx7fAq/4Hs/YBEPj3bI4h46AHhmf8JxvThmLw0rAwVfIFOMjN+Om3c@vger.kernel.org
X-Gm-Message-State: AOJu0YwDWCxL0ocnYTT0KnOkptvMMbXzKssAw2APCKbTT7Zo2eTW0NhL
	P+l1qrVE+pBAb4rmrf/Jvzss2hVb5KYj0jfGQr0xhgLiUy+0sDy2o8yTS6J5LaWM5RbkaW58fhU
	ZQidHUp21nT2/ikiCwf5IiUHlTC+pZndifbri8O9XDeK6fuUhkdjIIeWxbzzxc9j1
X-Gm-Gg: ASbGncsZQy2SYr7tX5Jtj35uMj8IgNzmB8MCPi6+pY+rXnzn2wUgeg4ifjtmpmLe6au
	w/Umq5cM0ne4EZFd0GhvP0Je2H7D6agzJgq6YtHvMEk4XUJsykF5GYcwZ+UsfPce90AUBXwRtlf
	gB7PxvMPF5wmwczutXzkVysCHHsHMyntMIIcCghFCi8b9B7DpiiratQLcUEDai1pY2hUIXJDsDN
	bpGdcU0VZMRWR/UuYjkFrM7s/gYWKQUm4KCvIPaMfI3pafT60NhaZSzHfjBGxho4CGcXnegcPhO
	yDSsZygai9QTAzU833xqcPOINiSTk/zvVUwcpRKgiav6QSmbN4+r4pz4QUd+Vlswpi0hqt+PI47
	qMvMmLu3iCeMLIuIpcEtk9eIoJlV2BK4pRdyYC3OXlxG1fQ1wIUf9
X-Received: by 2002:ac8:5852:0:b0:4b7:9ffb:18a0 with SMTP id d75a77b69052e-4da4cd4a061mr143128891cf.68.1759040315316;
        Sat, 27 Sep 2025 23:18:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFlQdXpq9xf3qMK8rgrvVSaVIarMfdTXA+EGifobgNxufqrTePrHruNxjnW9EJCKUwVIjmgpQ==
X-Received: by 2002:ac8:5852:0:b0:4b7:9ffb:18a0 with SMTP id d75a77b69052e-4da4cd4a061mr143128761cf.68.1759040314888;
        Sat, 27 Sep 2025 23:18:34 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5854703b06bsm1412296e87.143.2025.09.27.23.18.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Sep 2025 23:18:33 -0700 (PDT)
Date: Sun, 28 Sep 2025 09:18:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Val Packett <val@packett.cool>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Laurentiu Tudor <laurentiu.tudor1@dell.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: x1-dell-thena: remove dp data-lanes
Message-ID: <kgy2l2lmj6mv3er3nmvvpw44zort5cmhdkkix4oxijfojr4wol@tnxjxnlkum5f>
References: <20250927032240.20759-1-val@packett.cool>
 <b6066559-72f0-4f1d-9134-c93f732fa6dc@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b6066559-72f0-4f1d-9134-c93f732fa6dc@linaro.org>
X-Proofpoint-GUID: JVrbrUx9eMZBk0PNAED8jlqjZ_DHBrpH
X-Authority-Analysis: v=2.4 cv=MYZhep/f c=1 sm=1 tr=0 ts=68d8d33c cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=9kv6F70430RFdwkcrusA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: JVrbrUx9eMZBk0PNAED8jlqjZ_DHBrpH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzNiBTYWx0ZWRfX+l8WJifLx9F0
 DbbabWKg9jL0ft6eYjf6g15QiqtMxakYkGpCXaep/mIt06TfD7ckhaPE5ztycIRxZe7U0m90Fc0
 wNcwKVPTttTYyLe5ugGc6SkZifsbeW7lHnRlYiQMitCcOr4a8TlRNad02Vj2O0eNYsWvITKoSuh
 uf+Zh/aMB9W2wIdQBVurtuo4MPCeLjMaLhkY6CbpuOO4R3lAxqDl1G/lUMtK+kESNxoLLNf+pwM
 s3FltNYTXVa03DFmHGOEJaC20FMQI0gIaeDEnJZ/dEPCw2IOH4rdyfOe1iJ0oUScSzi5V9WOL/Q
 Dc/efWZD7TJSSvhG7Q0jn/dOhbrEN6+vPnmyyGj2z7HIPAnmdMIxWRc70RTI31ghks1T6bixOxG
 8QN1nm8Nt6d5KnN+It5tNYryiOSzEA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-28_03,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270036

On Sat, Sep 27, 2025 at 09:59:00AM +0100, Bryan O'Donoghue wrote:
> On 27/09/2025 04:22, Val Packett wrote:
> > The commit that moved data-lanes into the SoC dtsi (458de5842) got merged
> > in parallel with the Thena dtsi (e7733b42) so these lines remained.
> > 
> > Remove them to enable 4-lane DP on the X1E Dell Inspiron/Latitude.
> > 
> > Fixes: e7733b42111c ("arm64: dts: qcom: Add support for Dell Inspiron 7441 / Latitude 7455")
> > Signed-off-by: Val Packett <val@packett.cool>
> > ---
> >   arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi | 2 --
> >   1 file changed, 2 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi b/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
> > index d71b67824a99..ef83e87e1b7a 100644
> > --- a/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
> > @@ -1090,7 +1090,6 @@ &mdss_dp0 {
> >   };
> >   &mdss_dp0_out {
> > -	data-lanes = <0 1>;
> >   	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
> >   };
> > @@ -1099,7 +1098,6 @@ &mdss_dp1 {
> >   };
> >   &mdss_dp1_out {
> > -	data-lanes = <0 1>;
> >   	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
> >   };
> 
> You should include those commits in the style of below
> 
> commit df8922afc37aa2111ca79a216653a629146763ad
> Author: Jens Axboe <axboe@kernel.dk>
> Date:   Thu Sep 18 13:59:15 2025 -0600
> 
>     io_uring/msg_ring: kill alloc_cache for io_kiocb allocations
> 
>     A recent commit:
> 
>     fc582cd26e88 ("io_uring/msg_ring: ensure io_kiocb freeing is deferred
> for RCU")
> 
> With that fixed.

I think that's a bit of the overkill. The usual style is:

The commit 0123abcdef01 ("foo: bar baz abc") has broken this-and-that on
my device.....

> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
With best wishes
Dmitry


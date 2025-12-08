Return-Path: <devicetree+bounces-245273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4EDCAE1F7
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 20:58:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0C5AC300D33A
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 19:58:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 130122FB629;
	Mon,  8 Dec 2025 19:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JDj4ftL0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="diSdsEdh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0C72ED148
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 19:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765223915; cv=none; b=t2nY6udOu0BeYB6WQ0gK1dOukVqfkamoqM5X9WvgkpeFqkeMgCc1AGqdXuEP6RQue6q0PZnMp8eu0CNIVFEhX5fryjlCTgscHRh7h+/n+a0I+awXVKmwJqzAYbXYh+pihYYzuhL5LH65VGhqkCCFxehCq4Fcw/xyEoZ7SRPFdzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765223915; c=relaxed/simple;
	bh=qDxVfd+kjbAbDZBRDuwuXDLEi6JZmbu3TVP/4VitYpE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AU6sfESEyqMWZnWhxHMl3qqF1vLhNjc5MFKorH5VjAKR1BbP60ps70tNDJglUkwIE2sHOAsBYru8UwHvoTEVisPG7hUMBiQVTSPDtnijxBYIn/ZAVYC23L2JCWFRkv15DhT8+ehocqub6SykVs4zHS4P/baijQ3I1tGBW57QqQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JDj4ftL0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=diSdsEdh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B8J8F7B1327418
	for <devicetree@vger.kernel.org>; Mon, 8 Dec 2025 19:58:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tIQxMRJoByHgiShcf0XXstieJQqdicMUSF+aEIZfOXg=; b=JDj4ftL0+bNqbZ8e
	6ztS9qejy6IiPjon2e5wvRAvClZL5rGLXIZ5iY2xvommZk6ctApibPUS1Uuh+CyV
	3BlwvLQpPeG+27DQWN6g1rJgTC06F7htifbw1DFtUJrpwhLUM0eIPnwaa4jmzVB5
	5iturg7gllX7aZ2GebRMtTqkzFZ26pVotHs5Wpsq8vaL8g5mXi0BKfw9m4yCjjyn
	Mr9iIzaFGtWS/+GZjDoXS68evplL6c4kg86ufFYm6xJgqEkyYdzWEQ1Nl17kvrK+
	Wl2VG0BpUQmS8izF8y2LcvmrsKaF4Vfc+i3gVyLlvomlLqlecYsTcmCp55LJ/GLa
	nzqKBg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ax4jng3vm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 19:58:32 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee0488e746so106102141cf.0
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 11:58:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765223912; x=1765828712; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tIQxMRJoByHgiShcf0XXstieJQqdicMUSF+aEIZfOXg=;
        b=diSdsEdhp0R8zXwrvDHXSjnxEGMaRWxwwTDRY9bGgF0mVqIqSiWBqx94UdjqvBTQvR
         7TBhc5spIUpz15TLi6lD2fWCSV0uiVjFOGjMSglCJfOJsL+EFLLZDQIKNIXvuMwEBgiT
         E19M4VowGzp2XNay1KS4mX2jbNU0+vn8Oc7njOOHFN6aQldAYxuUDkLK1sT7UzjeoSLC
         0YPkuhGGONNs+ttaiAa9Pls4N4OnE1Cse5RChFDfe0s8U/rsna8uyLxzJQdIpX6J+7wf
         3h1IEkips511yqfq66AGM/NS1+Cwke2upqWkQkbtatKwQtGo0Op8Ngt6ujR7aLvvrCCD
         VZ5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765223912; x=1765828712;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tIQxMRJoByHgiShcf0XXstieJQqdicMUSF+aEIZfOXg=;
        b=RnY3Sow2gGpBstmD9c8ORfs2Q/O9IomWSYvMmx9GgYefpElo8tkNcgZwY8Ta00Ji07
         vHRblfpjmyCHedjIm4R70fbAsVNJyFnzEPp/pZ1Wzr5EYQt/ltiR17Rwht1ghI4etFif
         mUlNQ6WRjL2R2BJOm2lNxav44iJlChanw79cX9e86ktAUt5a1PeznbadDS+LAghTaaoZ
         Fa7gBuTv9++TDwHoK/k6M/xW2VeYE8R3SuVme9aXGyYideYtQGM80IYp34GIuWlJ2b+1
         51lDCeIaMvap8ZIG3m62gSXDntPYGJqBHIp5SOh/qBJqKwLneHNXw2/Xly3U5WcOqtmh
         0sIQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKyZM4zKprO+FEuuVBQBQq5Ya3pdKVoX7B6c19VV/Xmo1xz+9OMhKPvqXx75/O8PXHolGLk13/y2U+@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5555YbPBaH2EpdClbhsFvLQfAezFdO05QABgNIFhk2OFezZ2i
	wwlTqh/Cihq9iDVECu5voCoCxy21Pw5T27sKLKkIqm+9m/eM6+RBdiPihv759f+jLd4enG74IoR
	jQqcflWEkB2gmU367qoEhiqgQncth8tOezaije0uFTnZRuCTbDRhMjHw3w4YhS6G/
X-Gm-Gg: ASbGncudCQKOJCL7O/grCSEZ1DnfaO1xXGmjNLvyk1Tv80vwtTt+6dh51FA9aht6/O1
	YyYGuW8QL9qSp305VKQ8ihuUxDwkkhtLN+8RhfYbomKgLebOecT+vOEX5JHDJS+bA9seoFQkia0
	dTU1v2ah9wsuu4wu2ahHWoZ2+7Y1g6lwRjmGVebQKsXDOujzlXuCjnVXq3kW9mXc5Pewmh0QCjo
	jHTBbPAJd9CHrTsDp3Y38jSqHujIic3TU43/K46CzXIPE9mgmmY8tsDLzytNoahoqa/LsTuHtFL
	4GDRbDP2UIIwxzYR1yyIgR4vL5ymrmc6NUKiG634ypyMtc+ncfL7VDXjju2JHca+HOymDGgvQJF
	NVdFDW7bfbT60tlJW1mR4Apr/cQ710BHQTbx0ybLCxX84Ygg58Uc7Iaw/Ke/R2JIxpPDKM2gsQm
	FvT0smOybGTmS+8AsuNv2AORo=
X-Received: by 2002:a05:622a:34e:b0:4ed:a8e0:13c2 with SMTP id d75a77b69052e-4f1a4139f33mr9644951cf.10.1765223911643;
        Mon, 08 Dec 2025 11:58:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGHzR/+p0aIGPsigMrM2khvPLyN96tvvzb847GA21iVlQZxLUUcOjKB8cQthS8CCsRNAd+pDA==
X-Received: by 2002:a05:622a:34e:b0:4ed:a8e0:13c2 with SMTP id d75a77b69052e-4f1a4139f33mr9644491cf.10.1765223911026;
        Mon, 08 Dec 2025 11:58:31 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7b24976sm4479290e87.36.2025.12.08.11.58.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 11:58:30 -0800 (PST)
Date: Mon, 8 Dec 2025 21:58:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v8 1/5] media: dt-bindings: Add CAMSS device for Kaanapali
Message-ID: <msscnw2e4xil3kynnrfpujaybknbbzzk7mgcowgefqlk57zzfd@h73cxwezx7fg>
References: <20251130-add-support-for-camss-on-kaanapali-v8-0-143a8265e6e8@oss.qualcomm.com>
 <20251130-add-support-for-camss-on-kaanapali-v8-1-143a8265e6e8@oss.qualcomm.com>
 <f4d29f9b-98ce-4e57-9916-5a37927db2a7@linaro.org>
 <2tvkcuipfaa7cn7goynt6jfzlcxg2d7yvvjqizb6p7sf5oqwuj@drqiyr3khoyf>
 <dc0da45b-165c-455a-8e03-7cdd2d2d2ba0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <dc0da45b-165c-455a-8e03-7cdd2d2d2ba0@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=dZSNHHXe c=1 sm=1 tr=0 ts=69372de8 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=xq3W2uTSAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8
 a=bKaWK86LcX3T_COk3v0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=P5L7wpMTXyg1GfFA3Gwx:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: IEnNmGoraB3d4ovuLRzhihm58woEwhtD
X-Proofpoint-GUID: IEnNmGoraB3d4ovuLRzhihm58woEwhtD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA4MDE2OSBTYWx0ZWRfX2RqYGMrsQ9Oy
 M1Tv5+IBAKoBw4LdrQx5YyoGiHKjvgeJdAl9KHYxIwF4kAazg+ATOiwhCVzADm7qzpz59vCfk/0
 +ZYvE3jV5u0Tqh/rY0NYTynI7Wh9eV0xuGG83WPg9kDC8OZXbCmCXUH2AYKtSuw3KnAGW4J+zfH
 U7Q2M3HoiJf7KXZM7XifkTTZJW5nqAP5P05dE+npaKhINK95PL4XEjh2v03azMwWDXOYOExPvOw
 l/9Ap2CdMZ1lep3f5AvUso5hrcEgyI/TkfdUNRZbruDLZe3DSCqVjq2zLay4AfXPfMUjpoRTPRb
 6ZLyB75/5hz1wwin0kEdF2HXNnVx+4a+zdg1rnhv3QVXGhgiRuNjK5aQ/8L9CgUJlmhUSRPhxU+
 rV2zdL63VZDp90PLMv8+k/x+uHs8Ag==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 clxscore=1015
 priorityscore=1501 bulkscore=0 suspectscore=0 adultscore=0 malwarescore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512080169

On Sun, Dec 07, 2025 at 09:41:11PM -0800, Vijay Kumar Tumati wrote:
> 
> On 12/7/2025 5:44 PM, Dmitry Baryshkov wrote:
> > On Sat, Dec 06, 2025 at 10:11:20PM +0000, Bryan O'Donoghue wrote:
> > > On 01/12/2025 06:30, Hangxiang Ma wrote:
> > > > Add the compatible string "qcom,kaanapali-camss" to describe the Camera
> > > > Subsystem (CAMSS) on the Qualcomm Kaanapali platform.
> > > > 
> > > > The Kaanapali platform provides:
> > > > - 3 x VFE, 5 RDI per VFE
> > > > - 2 x VFE Lite, 4 RDI per VFE Lite
> > > > - 3 x CSID
> > > > - 2 x CSID Lite
> > > > - 6 x CSIPHY
> > > > - 2 x ICP
> > > > - 1 x IPE
> > > > - 2 x JPEG DMA & Downscaler
> > > > - 2 x JPEG Encoder
> > > > - 1 x OFE
> > > > - 5 x RT CDM
> > > > - 3 x TPG
> > > > 
> > > > Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > > > Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
> > > > Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> > > > ---
> > > >    .../bindings/media/qcom,kaanapali-camss.yaml       | 647 +++++++++++++++++++++
> > > >    1 file changed, 647 insertions(+)
> > > > 
> > > > +      - const: gcc_hf_axi
> > > https://patchwork.linuxtv.org/project/linux-media/patch/20251126-add-support-for-camss-on-sm8750-v1-2-646fee2eb720@oss.qualcomm.com/
> > > 
> > > Pointed out by Krzysztof in the 8750 patches but the name of this clock is
> > > gcc_axi_hf.
> > > 
> > > ~/Development/worktree/qcom-linux-next
> > > ➞  grep gcc_axi_hf * -r | wc -l              [git:platform-qcom-next] ✖
> > > 48
> > > 
> > > ~/Development/worktree/qcom-linux-next
> > > ➞  grep gcc_hf_axi * -r | wc -l              [git:platform-qcom-next] ✖
> > > 0
> > My 2c: it should be none of those. gcc_axi_hf is the _source_ of the
> > clock, while the bindings (in my opinion) should be describing the
> > function of the clock on the consumer side (e.g. bus, iface, something
> > else, etc).
> 
> Hi Dmitry, this is MMNOC side of the AXI bus clock for the HF clients. If
> it's ok, we can change it to be consistent with previous generations for KNP
> and we can take it up in detail when we refactor the bindings for Hawi?
> Please let me know if you have a strong opinion on this at this point and we
> can discuss accordingly.

Well, why do you think that for Hawi the requirement will be different?
It's the same: describe the _use_ of the clock rather than the source.
You got that feedback internally already  during our telcos and then
later when you've sent your proposal, but for some reason you didn't get
it.

BTW, if it's an MMNOC end of the bus, should it instead be voted by the
NoC driver?

> Hi Bryan, we are addressing the things that makes sense for KNP as well in
> the next revision. Btw, couple things like a separate CSIPHY DT node and
> ordering of the resources (that were to be added at the end as you advised),
> I believe are not relevant for KNP. As for the GDSC names, we preferred the
> module name and it's GDSC name to be consistent so changed the latter as
> well to VFE. Hope that's ok. Please let us know if you would suggest any
> further changes to KNP v9 bindings and we can move forward accordingly.
> 
> Thank you both.
> 
> > > Please resolve the other inconsitencies pointed out by Krzysztof in that
> > > thread here also.
> > > 
> > > I will have to skip application of this series in the meantime.
> > > 
> > > ---
> > > bod

-- 
With best wishes
Dmitry


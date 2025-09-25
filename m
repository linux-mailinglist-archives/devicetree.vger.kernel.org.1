Return-Path: <devicetree+bounces-221534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D00BA0B1A
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 18:49:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A970D16DDE0
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 16:49:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B5742EB850;
	Thu, 25 Sep 2025 16:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EXkE2YJn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F7129B777
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 16:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758818961; cv=none; b=eeHzKfaceHmLP5QFErjt3vBsX7s8gPxVFCdGiu4VPi8JGLf16tSXHpA4PLL8ejY+5/0dFS9DqgsaXqSu1pKqI82PG+SXhzkCQX/WTyXzf+GreaMPN7oahx0Xz8GC0BQ2VPuT4hNmdQloOGhEzXgmjCQR70q02xq+tI5rwWZVr0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758818961; c=relaxed/simple;
	bh=8FCH12DyEzMNnnk+0LH+hPIRigAxZoYH9xFK5aw71Pg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IdisSA2NeXT3OzX4WGKsbDWl81kIg31kDqxZGby/yuysxyOhPD83Hs0r5uddE5RGjWvrpHl7ejPbMAcR5cwPt6/MKq4hjYrLY4EMguEEiIS+P0w9KF/dt4qOn/vHbjXmz5KQr3q1f7ejdMfo0IIBnHTcu+7wb2JzuZ6woXFnP9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EXkE2YJn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PAUhHM029619
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 16:49:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=O8E/Q0Q2T0miV/vIY3HkyaSY
	ay9pRIb7qiM4HhHNagM=; b=EXkE2YJnBmXZLqeSLfzc0Bplvze0C2nnFdgMn3Yb
	ujSz5PlCpp6BC1b9jQ6D838Iotob/+it7FXcDh6+LVmmhlGpRZscqAhCLUr4DlIu
	0pVOApH6o603MAePpATQydnNJp5wM10bDFlcGLmforaBmjTvy4ohrN9dUvnfGCR0
	regPt1Gl337qSqoJydHx+1snwE/RDRb+hh4a3JZ6npMme9Zx2+Z+VL5zLOs+Pibs
	dLqxNrQelOpS2vf1SeTBVQ812ORqz/xc+yGTWvm20vwzfLfj+ZjiKwrC/5rU5H0S
	T+td0Tcs1HshuKbG7mhPhhF8sfqpXyRmc+XWwGbvOFzHbw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1frsrv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 16:49:17 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5d58d226cso30168441cf.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:49:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758818956; x=1759423756;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O8E/Q0Q2T0miV/vIY3HkyaSYay9pRIb7qiM4HhHNagM=;
        b=EHWtN/ytBFNyLR24XVIsJjFC15wve10P3NgaudrrnRYukGk3rfoRcnizgR1jY/N+Hv
         2civhdaLaPuTQEmllc269hayVA9rZCmjtaoeNwUh3GKlAaj0IulVyW96QR8axVXsIVmA
         nK64mWL7Q2A8k6+hPKH7uyOFPb6Bq9ShikTrLBGprQl9Z+AKLp/f1S8wgJUB1U4QlYAf
         B5hR2SecjzUNiHXCS2nNXZgEs2+/YPqzhBUC9cXEemlFFUOVYRp/P/FD4eDflwpnMx2A
         wKm2DDgBlEdSoNWaJ8EXJH7NM9f3fvAGLBPcmoLzp38CdrY1K4T85T2ZYwXVH4mDO7ZY
         IJDg==
X-Forwarded-Encrypted: i=1; AJvYcCUrf+0wgX+Cg1oGrxHU2k39xJ1rn5VvmOhpu2RoSNfs6GN8FfFYOtEJd4ximRVZTeYzxIDI3poxnNSe@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+6vdqwA+go1eMPLZYoSgnHdEHKNy+sx7oZ+idGRgviFXl4ifE
	sPjjmepzCjir+KCEnNUcpg5wkzPboLl4y9TSyLdky6aRbHt9VGFJd4LKG6vZtkq+mIPTVhG8f96
	3iql2MqCeKyMmyABTPUJdH2fWNg4leOnJpBhJcOXGmJhhdBP7maSImMjiJg0tD1Av
X-Gm-Gg: ASbGncudL8Gy4t7mxZ4n0FT1Iz1iTp3DSim/jD7xvkd+U1dd3OyhqmlBZULoH7RL4oK
	DnBH8UkJUxbKfabUIbNUyHmW8jXTOOYDnUJ8w+tTCwKbRZysPA92IrJ61nzmh68df2ImnWVq6kq
	CK3ZwOwV/cQ5iUQ9O3TubdGjB4RWcK8dZ6vzsHKh7m3WY7kkCESQY1KzUE6Jh1AVJdFy7DUhySh
	hzre86pEHTMc9hI5f1ZQqHOVI34No8b7xoA4SVVSQ2fvKfKXlCnBwfWK9TOPKzA4eJtb6QR2zgF
	kNCZLpCQaRA6xZc2W0RcdK42e3KWxCY1T1gNTPi4OqpmY+X1jdygHhNTa727bLFYCDpACCbokkr
	qfofl6JHtk+5uvN2PKStacWAnyk8uxYKOYD4Fhcp9Kj3G1GnYlZln
X-Received: by 2002:a05:622a:2d10:b0:4db:7bc2:92b with SMTP id d75a77b69052e-4db7bc21423mr18058861cf.42.1758818955751;
        Thu, 25 Sep 2025 09:49:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHl5VAez8V9byRkomAR6n8Uz+yVV5p6cTSYYseuZ2q/3tAbwHDTFxFiaDtB4a8EkykXmnhBWw==
X-Received: by 2002:a05:622a:2d10:b0:4db:7bc2:92b with SMTP id d75a77b69052e-4db7bc21423mr18058561cf.42.1758818955211;
        Thu, 25 Sep 2025 09:49:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5831343158fsm924184e87.4.2025.09.25.09.49.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 09:49:14 -0700 (PDT)
Date: Thu, 25 Sep 2025 19:49:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Subject: Re: [PATCH 06/20] arm64: dts: qcom: kaanapali: Add USB support for
 Kaanapali SoC
Message-ID: <bgzzkcf4d74rhdzr3vbjxs55gssojzrizinfvedt6zrz5zgs5f@phggrhdhz4el>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-6-3fdbc4b9e1b1@oss.qualcomm.com>
 <CAJKOXPcbJY4JEjfZLvOAXEWCTYFpe7En+Riis2t3K5fWJgNU5A@mail.gmail.com>
 <53d63dd6-a022-4e80-a317-3218976a7474@oss.qualcomm.com>
 <CAJKOXPfGC=FK7AKOtmmSV7=3NNXAHe8A_PGjjhTKgRs4Jk25xA@mail.gmail.com>
 <CAJKOXPe6Gdc8qb7fwwNsMLiv0SxXm=aOtrR0HsU0S9wiu6erKw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJKOXPe6Gdc8qb7fwwNsMLiv0SxXm=aOtrR0HsU0S9wiu6erKw@mail.gmail.com>
X-Proofpoint-ORIG-GUID: WEnH5z7VbUwa9NmsAQDILTMYNtsaVMCt
X-Proofpoint-GUID: WEnH5z7VbUwa9NmsAQDILTMYNtsaVMCt
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d5728d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=yAlcOy_z4u1BhRCK-xcA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfXxuedo3KUqzwl
 HdVGTVFVwGw4vNRWNDkpLW3J5KWNIjii6vAlhQwfDBXe1ImoakBvj8oq1bxAvqE2S+qVxKxTTeF
 63mlg81Q6mH8d0ucFSfabD6/l+vYWhV0tXSsPFO5qG6UMoawr3QYzCBOoh6wQuqWtJkU+BGeuZ7
 c3Qc0TMupeb6fXrQod1gReZMoRMNBOLCzolzH9Hf0SlMNzFu4VXqFENNmJXRDXcbTEKWpl/HyC4
 cA0lRlZM7pW9Db4U2N6d1UT4cWA2x0qmY7k6eAzdapy3bgISsbEy3CHzJXQfgILGuY17qqyFBBh
 yD8kKj9xm4u9xQIAoBHQ+n2T7knw7lNF8e4dAL5Fsbu8l/WcrkexsfQsxVcALLoe++cGo/3S/CB
 w3y3CX6A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037

On Thu, Sep 25, 2025 at 06:01:15PM +0900, Krzysztof Kozlowski wrote:
> > > >> From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> > > >>
> > > >> Add the base USB devicetree definitions for Kaanapali platform. The overall
> > > >> chipset contains a single DWC3 USB3 controller (rev. 200a), SS QMP PHY
> > > >> (rev. v8) and M31 eUSB2 PHY.
> > > >>
> > > >> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> > > >> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> > > >> ---
> > > >>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 155 ++++++++++++++++++++++++++++++++
> > > >>  1 file changed, 155 insertions(+)
> > > >>
> > > >
> > > >
> > > > Second try, without HTML:
> > > >
> > > > I really don't understand why you created such huge patchset. Year
> > > > ago, two years ago, we were discussing it already and explained that's
> > > > just inflating the patchset without reason.
> > > >
> > > > New Soc is one logical change. Maybe two. Not 18!
> > >
> > > It was previously squashed into the base soc dtsi patch and mark like:
> > > Written with help from Jyothi Kumar Seerapu(added bus), Ronak Raheja
> > > (added USB), Manish Pandey(added SDHCI), Gaurav Kashyap(added crypto),
> > > Manaf Meethalavalappu Pallikunhi(added tsens), Qiang Yu(added PCIE) and
> > > Jinlong Mao(added coresight).
> > >
> > > While it is over 4000+ lines when we squash it together.

As a reviewer I'd totally prefer a single 4k line DT, because then I can
navigate through it while reviewing.

> >
> > That's why you send one node per patch? Multiple huge patch bombs land
> > the same time from Qualcomm, with patches adding one node. It's like
> > the "no more patch bombs" discussion and rule never existed (yeah, I
> > know it was removed but the spirit of keeping maintainers mailboxes
> > sane remains).
> >
> >
> > > Also as offline reviewed with Bjorn, he suggested us to split out the
> > > USB and other parts.
> > >
> > > >
> > > > Not one patch per node or feature.
> > > >
> > > > This hides big picture, makes difficult to review everything,
> > > > difficult to test. Your patch count for LWN stats doesn't matter to
> > > > us.
> > >
> > > With the current splitting, the different author as each co-developer
> > > can get the meaningful LWN stats.>
> >
> > We don't care about your LWN stats.
> >
> > Sending stuff like this for your stats, means that community and
> > reviewers pay with their time.
> >
> > This is really just selfish. No care how maintainers need to scroll
> > through their mailboxes.
> >
> > > > NAK and I'm really disappointed I have to repeat the same review .
> > > Currently, there are 10 SoC DTSI patches sent, structured as follows:
> >
> > Why did you ignore all the feedback from 2024 and 2023? Every year it
> > has to be repeated?
> >
> > >
> > > SoC initial
> > > Base MTP board
> > > SoC PCIe0
> > > SoC SDC2
> > > SoC USB
> > > SoC remoteproc
> > > SoC SPMI bus, TSENS, RNG, QCrypto, and Coresight
> > > SoC additional features
> > > SoC audio
> > > SoC CAMSS
> > > SoC video
> > >
> > > Which parts would you prefer to squash into pls?
> >
> > I made very clear statements year and two years ago. We also discussed
> > it on IRC multiple times. Can you join discussions instead of ignoring
> > them?
> 
> (Apologies for lack of trimming, typos, HTML - using phone)
> 
> ...and you sent both inflated, LWN-stats-gaming huge patchbombs
> (Kaanapali and Glymur) three days before the merge window starts.
> Community works for free, doesn't it?

Most of the maintainers have closed their trees, so it doesn't matter.

-- 
With best wishes
Dmitry


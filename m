Return-Path: <devicetree+bounces-245598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB87CB2D37
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 12:29:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B25BA31201DE
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 11:26:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 318F43016EB;
	Wed, 10 Dec 2025 11:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="otf+LRyE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KS9ejfbS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA9582F9C3E
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 11:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765366005; cv=none; b=KlcvOmoPPvNBkN3Qb/cYpukvBPkfxP57Sss7JspEW4q/qB0o/JIPghARewsL6Z2TDnY+hA3q0/O3n1NVnnSUce3Bqy+12vhklW1VQD8uamwCepC5SzPT3tX8j4bky8m3mz9TusqCwTiX6RrcLjQv5HXObBs9jeZILossVb0+wuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765366005; c=relaxed/simple;
	bh=qZm4xqSd0nWYAh/2gTM8EQkKUakA2daknB0qCK1sjG0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UvpTs6ydBlTTDy9rFdwjnX78xbgOifcXvqhTvEKw7UMwPOPo+yujvhxCcu4PL1dd0EsnKa3/c9mmDLypnTDWHYL8W4HG6mbTtHOvfC6PIyHLsDnYMiRRKxLIbnqX7EiVH8L3hm5iSFIpbdB7/BNu/8zI0T2JXs2v0j9wH0bHrIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=otf+LRyE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KS9ejfbS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA8e8Nn1918679
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 11:26:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=TetCbA0vG3ujJ9H342HVOB/k
	gW1LYI/zlgrlQ7ZPt7E=; b=otf+LRyE7l+jTHY348nDXVPM8sBQfLqREbc8buUD
	tPMoNESiUwR0WW1Acrk0771Y9wKMIYkqENxdd05EP3uvfOu4cdg9Y2zm9zthdutI
	MNv7bpj9hun5Mbo/nEU50S8VvQAetkJjSMGosXYh3x/sNxJp9NElK/c8WotzEmHs
	mLnlKaEhFHYRr8Thu70UOjCK6RIeEpapCL0BpzRhmLzot99ZIL9FXazQSmJkwN7A
	6VK1JMIV0hS9rVSeVix65Ngxj80vkVO9cMdJX4++ZvOxxrc1p6Joxyu5AAQH5Jg2
	tGNNaPLmlbzn0eWnRbPrwXahGutMoe1ZQRpS8XzCEdYenw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay1xp16pb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 11:26:43 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b51db8ebd9so2135086185a.2
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 03:26:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765366002; x=1765970802; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TetCbA0vG3ujJ9H342HVOB/kgW1LYI/zlgrlQ7ZPt7E=;
        b=KS9ejfbSflO0ZXE7i+mAZ9mVXD0kp/Lit5UpHlD+HYn4r+ATRJtM7vNPNl7ewZAAo3
         zu7ADbW1I/mf3YGROOP0nlFVS1I7O0RH7Of96FKxDDKzGyQFw0b84vy3pU+IB5NFcuIm
         bOZoB5HAF4JQPiqr4sX2NWEloodChNQt+eBNPnGhhbpFL89F89wyBeAi856oyXcpu8pu
         sUicXRzy/NlvWA0wxqF1TNOdljtPIjzHWmk1lC1R9Jnye555SeuzNL19meDWdZdhQZ9x
         duUc69q0C7mGoaLwhVJ1eg2fFOANpkdhd3rXpZMBgau3ZW42f0c6WGyCiidTspJ4CBKo
         3jlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765366002; x=1765970802;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TetCbA0vG3ujJ9H342HVOB/kgW1LYI/zlgrlQ7ZPt7E=;
        b=OP8N60M1Kuh05SFY0Uoy8HqoDOsBZ/r68KwwRpCYKKs0vmMUbAu4lJZxiAbQf5RqHc
         GvW1qpWXGCtOS7D0xhTPDUBWUZZlA13i9/zV8FSGotGWvbiK3Fakm8jxl43WG1reEo4C
         QVoxq8PHzXUAu772w8RfQUWYclXgJqerBv3ZWkiXYCVAdf7B9wOor/P/TAIvXZ6lKqZK
         AX5RmgEOddgBUrMIpxMv08HMNmc7BcvhqOzMVLQj5BrYHayuiQlh09LUgL289W/tUX7h
         mDPzYes0y0o6K/LVeUJy66DaGgAnU73lvu6Seq+iddiDgCEV1iDS66cAs8T95CKLxooO
         iwUQ==
X-Forwarded-Encrypted: i=1; AJvYcCUtPv1ERKbXAD3mPQeCwwp0KZV96HNz3CQgY55Ay0FrXxzOs7oy4XseblamDBYmtGru80J8DddYY/ou@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4iuUCyG2NpXBRObaGu8vULLrwLtzhXObTBLK77XmC6SLlMQz+
	KH9FzO5n/d9s07K2aOxJdhnoGKLw5hioPBkmF8o9H0/2iJl3cy+BixuyAXnG6/l95+/1/H2PQ61
	fuJxrD2T2BK1eN3EbiSG5p90c1sm3KxRxLOHgsIqJcK5ULXfsqqY0zo3n3xGSB/K6
X-Gm-Gg: ASbGnct2/cwPZkzbxYmqfZ3z43zR4Hirttb+euhoR5bK2lygKSyMwyKsTDWVj/RD3yb
	ca93wUoECxGkcze9QtTZEgjH0q2vw6v8sy15Mr1CVAgXeuDzNPkuJYatqYkTFh5w9bjD8ytrXTW
	Q5BaC/e8Xypmr0DirjHtUmj614qRDk1UufhrU79ZnRtN0G3Z0zvgAh2r/5Nh/ncIkbT8XnMrEUl
	oA8W6p5ZUgYPjHCxidMVNpDn5U9XgXzXEi4ZDgboGU7oVyCP15qEyngRtYK8ekyF8MoNo64Spal
	OkGLDdhV9ACvnmgcRl+lcnMP4vdrdOQguO4VBiOKztphn2LcZRvX0IV8+snGeg/a750cCMLvN2i
	hL/rxXUYeGq7aMIXdm7ZcLw==
X-Received: by 2002:a05:620a:cfc:b0:8b2:efe7:d82b with SMTP id af79cd13be357-8ba38c77fa0mr202718485a.30.1765366001912;
        Wed, 10 Dec 2025 03:26:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IExLkgm4f5QGQr+3+UudzpEtgPUVmMMlsdhTt53Ukg2vvb36GiyDfz4xLO9RSWHI1kJ95R24A==
X-Received: by 2002:a05:620a:cfc:b0:8b2:efe7:d82b with SMTP id af79cd13be357-8ba38c77fa0mr202715485a.30.1765366001265;
        Wed, 10 Dec 2025 03:26:41 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b412146bsm16555391a12.23.2025.12.10.03.26.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 03:26:40 -0800 (PST)
Date: Wed, 10 Dec 2025 13:26:38 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>
Subject: Re: [PATCH v5 4/4] phy: qcom: edp: Add Glymur platform support
Message-ID: <ef6gkmgy4n6ipdam2nbm3no2ew3mga6dt45xpf6ykv3is2nkjh@gvz6pzg6dk7e>
References: <20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com>
 <20251205-phy-qcom-edp-add-glymur-support-v5-4-201773966f1f@oss.qualcomm.com>
 <q7iguwi6uxkzl3ogk2jidfncc3guuaqzszvemvqita6t3mlnvz@6e2vxnu4li46>
 <e22cqybvhlfv6mvmbr6tlaz4zousxcyo475g67yjerxw6xks64@6zzg6tj33kxa>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e22cqybvhlfv6mvmbr6tlaz4zousxcyo475g67yjerxw6xks64@6zzg6tj33kxa>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDA5MiBTYWx0ZWRfXyGebw2WpE0/H
 xXaiUHQbvLZ3m70FIzZ6KAUjeE2MFDFx3UwEk49xVSInnYDHrBI9DB2COgM9IBbxlqnT/uu7BlX
 4FmTslzs02RTqwub3iEYVVGeTY4Vnl16Ji3aBYqcLb2pdE+59At+fl9OyGRd4LH1XcIAl9JVN5H
 Z/uwAGb4uHfWI7L3oWAT+sHOKlZA1GSUBR5bBSVGMPRqHHH4Xore07vO+ZMTb3xLTFM3GQpxtlI
 367Dlchwnjubon2BW+5sJyraTHCY8cjPF+qwxprkpwOOV2spDR8g1o4hjelKxdkf8mdqhG7C1Qs
 IJGYYmqi5JBmAFbHcYY2TDyEH0KM+fkUdbGhOdnpy/isBwN1UK1QRT5UqHM9aCoS9VMcl+IXDOb
 gJAG7cK5t63vmDez+eJL8zWiYXBAmA==
X-Proofpoint-ORIG-GUID: 4q_2gaENMxO_nZhEO_nJaglf3Xv03ADE
X-Proofpoint-GUID: 4q_2gaENMxO_nZhEO_nJaglf3Xv03ADE
X-Authority-Analysis: v=2.4 cv=A/Zh/qWG c=1 sm=1 tr=0 ts=693958f3 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=Knydav1BIcOQ2oiR49QA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 spamscore=0 malwarescore=0
 bulkscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100092

On 25-12-08 16:16:31, Abel Vesa wrote:
> On 25-12-05 22:26:35, Dmitry Baryshkov wrote:
> > On Fri, Dec 05, 2025 at 04:23:23PM +0200, Abel Vesa wrote:
> > > From: Abel Vesa <abel.vesa@linaro.org>
> > > 
> > > The Qualcomm Glymur platform has the new v8 version
> > > of the eDP/DP PHY. So rework the driver to support this
> > > new version and add the platform specific configuration data.
> > > 
> > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > > ---
> > >  drivers/phy/qualcomm/phy-qcom-edp.c | 230 +++++++++++++++++++++++++++++++++++-
> > >  1 file changed, 224 insertions(+), 6 deletions(-)
> > > 
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> > > index f98fe83de42e..052b7782b3d4 100644
> > > --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> > > +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> > > @@ -26,6 +26,8 @@
> > >  #include "phy-qcom-qmp-qserdes-com-v4.h"
> > >  #include "phy-qcom-qmp-qserdes-com-v6.h"
> > >  
> > > +#include "phy-qcom-qmp-qserdes-dp-com-v8.h"
> > > +
> > >  /* EDP_PHY registers */
> > >  #define DP_PHY_CFG                              0x0010
> > >  #define DP_PHY_CFG_1                            0x0014
> > > @@ -76,6 +78,7 @@ struct phy_ver_ops {
> > >  	int (*com_power_on)(const struct qcom_edp *edp);
> > >  	int (*com_resetsm_cntrl)(const struct qcom_edp *edp);
> > >  	int (*com_bias_en_clkbuflr)(const struct qcom_edp *edp);
> > > +	int (*com_clk_fwd_cfg)(const struct qcom_edp *edp);
> > >  	int (*com_configure_pll)(const struct qcom_edp *edp);
> > >  	int (*com_configure_ssc)(const struct qcom_edp *edp);
> > >  };
> > > @@ -83,6 +86,8 @@ struct phy_ver_ops {
> > >  struct qcom_edp_phy_cfg {
> > >  	bool is_edp;
> > >  	const u8 *aux_cfg;
> > > +	int aux_cfg_size;
> > 
> > Can we always write DP_AUX_CFG_SIZE values?
> > 
> 
> Sure, I could check what are the values for the rest of the regs for platforms
> with v4 and v5.
> 

So, after checking the docs, it seems we could write the reset values for the
v4 and v5 as they always are the same between all platforms: 0x03, 0x02, 0x02, 0x00.
At least on the platforms I was able to check.

Should we risk it and add these extra values to the array even though they are
the reset values, just to make the driver more clean by having single sized arrays
for AUX_CFGx between all platforms ?


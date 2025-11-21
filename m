Return-Path: <devicetree+bounces-240968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF95C780FB
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 10:11:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4261B3487DF
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 09:11:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 368FA33EB0D;
	Fri, 21 Nov 2025 09:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ReKJV3xu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KvKfb+RN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99CA32E88BD
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 09:11:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763716292; cv=none; b=jPXqjUrcDd9BONzeJIudfJdRG+mZn5cjmJ6gulTYQ6TEiNfoMjhs/UQ6ym5Dyl8ZklVKMlicK69x7HFPESI3w2CbDdW813ltlH6d0V7gwBAq48IE4r5Iizg2/qkFEZfl0+mHlen4pgjYUXUaNOowOb8KZvFhCIMHvoyHUNKhXAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763716292; c=relaxed/simple;
	bh=D9Uu7barxsvU/dFL+3x+WiTPAY/bRXLTUcVnEzfzjK8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I+H1kZJkeFAT15IrT54h89hCYlqGcZ8xbySyXS2HYjDqTAYoGJAdhwBdmW8G6cWBCnqt0dLFbqOk0sF4OQ+tOOJGh399ggsMa4IbG0na1T4r+j1h7TxUJKHg4z3ry2m9iIOycYXHRVk5iqQflKdU2KUb6fIIZMjO0aRar3btB6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ReKJV3xu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KvKfb+RN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AL6ajPC1829100
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 09:11:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6D3P9Xp8JseIZLmbs45NXi2R
	k2AineqfCx/Cyn3YGso=; b=ReKJV3xuD4Y2yy+KHRfKCHXxiUQ9IBCIMS8GIoUD
	NTwAsP0HMoBnIIoi4dF31MQvQN+O5X6fxwB5w33O+9BQgtHFTdml6i36/w53zhfj
	5ggn4Uf9L8B/o7i29+YLJVtH6BaiRiJDA6+li0kkwUJVsCOD76KIMjXEtVvwNZON
	yVRXSrkAdWKGguVG/H3RiQkgpY0EO0e9Org4tuqlD8/67UhjIeHDHefZlGnfwTPU
	m69uMQwGomB5Jl7plkQf+aBmJVhqlORjV1Dx4V7KeCnKx8YZ0xctRTn5FFz81z+G
	D4MPXfYsGeExWLbLlq0sFsxn9MBeRJEhnzEqoPAoh4mB1g==
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aj0kw419m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 09:11:29 +0000 (GMT)
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-4510650aea0so2873119b6e.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 01:11:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763716289; x=1764321089; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6D3P9Xp8JseIZLmbs45NXi2Rk2AineqfCx/Cyn3YGso=;
        b=KvKfb+RNRsbmBDFfWyg+X2DlrlIkv7YU4WzQJyhmLc+mYQi+mYYdEPbpEFib45U1pD
         ZOIGaijAAaUClt3T0IMgKmNsHhmcKw9/CLBeFw9TMTUqhu9HHozDYsi6gr2kvcV/A27l
         U3I4Q1gwsyzOohCCCtRWwfV/Rj1izO5InIN6rvVXKPuKZVAJI+U2bkM5/hT53Ki66eVI
         A8EhHECfgHzM4luAvPl41OB58xi1+K3exD5xm1bOYgL2wu7pYMEPHkp4MmS+1SIjuEM8
         SscyQZeyR7Faf+FTb3x/fkN2+AAWge7VXN0VG7qttlSrBUAhUN15AtDv+I+gyhXFuLG5
         X7hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763716289; x=1764321089;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6D3P9Xp8JseIZLmbs45NXi2Rk2AineqfCx/Cyn3YGso=;
        b=cQfArN+3/KLiqvUyKPGYTKfKu+YaX8QhAylv5ASkcJ2Iv3NajJwzU9VwGEKlFqTi8v
         GJW+ugpualZq5IYbN+W6Jur1BgLA7NnH8/LlYSVfSwRaueEOOQmaQ7f1PPtANczv4jYt
         hfJ8qs1ytwWjilXBDsfas7X35kCKofaZqlexQ2pO3Svgn7DdhVtuPvGclHG+9x7jF3w5
         vo08kwaE1g2+9rqdaCVlmz7ZN2dpTLTJ9s4wpDXueDk1pUcguHgLgeTaSnrvwJg2W+1K
         r4zGj2IqSDZPbNJTEw/cOSKuuHFRKqn9VzQ8SY622voCh/89rIJxRLH3lFzihf3jug+R
         vVPQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnvGLn/S72kEVB8r6t43gyV1SkmwcHHfdNqbDeoEXbM98VTWjiGoMUholU2yvoYWNyKhZdcNiSW+wS@vger.kernel.org
X-Gm-Message-State: AOJu0Yyey+87RiATxawpFsT9Zw6O7w+lC1u+HK79VMm1PwDpiVaikKC3
	lHjuMd9srH1CssOU6HI29tdGYUiGLwTrH1V/f/FzSKeYkjtwmnzdwbxL/UXmPof1mAeVzHxrmnd
	dZQhah5ZyhtIMZVELH3zE1WA++wK76EysufTHbNi02ITPZHk55yvzjdwI2zoDt1DB
X-Gm-Gg: ASbGnctTQSiXrXq1TYzoLJcrfQEy/rKrWOLl8svrZVatk7d+peN1TBfVB1w38TiMgJw
	E39YAICAGj1dEWJ9ZDWE9i/E1iQF3Uq/bYj3mEAXLLTrd0Vt7LpPZQ2md2Wx9pQqodqcAfSKijx
	jVZLCqpVCy3Lt+brWieaIbBsZUOg7nrMI4xyjO0oTS1M0B28QIQDyLWa1nqO+ADTQIA+ll7ylFD
	cq0et5Pume7hUdF4T+qq6UDcCtmo4+joL5vREmGYO5xuUWwrHWzlO1GmvSukMQ3WsEmd34IgxR0
	N8wZOJ5L61CFB1p1vDymYrR3hBQyvh2Uo8kjm8ZBLfZdTRurnQZoydwj4uBjgkEPosZHC35epW4
	r5lI6anFDPzRnFsngHFTNyQZjCsG8ewdOtWcg71G2qr2Pi5yxjUxyD9pc
X-Received: by 2002:a05:6808:f8d:b0:44f:6a32:535e with SMTP id 5614622812f47-451159c88a9mr469058b6e.10.1763716288848;
        Fri, 21 Nov 2025 01:11:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFb0TmlottiXLv2BMTXYKf/C86WOZfRODfkKwZY0hWSZqYWzSXPghuwnxyKD/Ob6abZmspcXg==
X-Received: by 2002:a05:6808:f8d:b0:44f:6a32:535e with SMTP id 5614622812f47-451159c88a9mr469046b6e.10.1763716288487;
        Fri, 21 Nov 2025 01:11:28 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-450ffe2d425sm1473631b6e.4.2025.11.21.01.11.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 01:11:27 -0800 (PST)
Date: Fri, 21 Nov 2025 01:11:25 -0800
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v6 0/3] Add support for Glymur PCIe Gen5 x4
Message-ID: <aSAsvfRrDxSLI2v9@hu-qianyu-lv.qualcomm.com>
References: <20251103-glymur-pcie-upstream-v6-0-18a5e0a538dc@oss.qualcomm.com>
 <aRyoo2Ve_hjgc84M@vaman>
 <aR7xkSWWLoGX1HYn@hu-qianyu-lv.qualcomm.com>
 <hoxawvhmxyht2pf53xiw5wratcmivc7d3g2w4u5lzhkvnjm2ua@yba3t26of36c>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <hoxawvhmxyht2pf53xiw5wratcmivc7d3g2w4u5lzhkvnjm2ua@yba3t26of36c>
X-Authority-Analysis: v=2.4 cv=WeUBqkhX c=1 sm=1 tr=0 ts=69202cc1 cx=c_pps
 a=yymyAM/LQ7lj/HqAiIiKTw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=DD3sGXivSqi05yfKeKUA:9 a=CjuIK1q_8ugA:10 a=efpaJB4zofY2dbm2aIRb:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: xgVl5NCtyCSzzzATQ56ogOtEzJ9wjkZ4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDA2OSBTYWx0ZWRfXweMLBhn/o6I1
 zOls+5F2fzJZhhBqBK0weV6Lqs0LBJL36St56Z3JqLv+e46Dt9vCt0tK4xkFjfkWjlikknlmMsq
 W2lKde2YDTmQC6iX0/mtFNax56365s/wWakYaQOKeBnKKYyG08+AU5RBhC436HiV69yU1iaOe1m
 Rj5cJYXovYEp4mE+UoajuMt40RN7lmaEgdREVn826fL7tsFQri8MZozrvi9qnV3KvXedxyWUs/r
 QQRk6guxEvDW7LQekOgabEeWCJE0UbIGu53KLRCdGLF5WAUJA7UMlnewGJDVbKy3XXWO8QNt4Gk
 0S1BNjXE+4Ht2kjmqhDBQL1WabIyw2zIsK7RbmdSysbYL37weByl9PulSONQToYq4xJvPhWypNG
 12fX+NUa3qoqCLgEcijC6P9Rfp/Z3w==
X-Proofpoint-ORIG-GUID: xgVl5NCtyCSzzzATQ56ogOtEzJ9wjkZ4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_02,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 clxscore=1015 suspectscore=0 spamscore=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511210069

On Thu, Nov 20, 2025 at 04:50:12PM +0530, Manivannan Sadhasivam wrote:
> On Thu, Nov 20, 2025 at 02:46:41AM -0800, Qiang Yu wrote:
> > On Tue, Nov 18, 2025 at 10:40:59PM +0530, Vinod Koul wrote:
> > > On 03-11-25, 23:56, Qiang Yu wrote:
> > > > Glymur is the next generation compute SoC of Qualcomm. This patch series
> > > > aims to add support for the fourth, fifth and sixth PCIe instance on it.
> > > > The fifth PCIe instance on Glymur has a Gen5 4-lane PHY and fourth, fifth
> > > > and sixth PCIe instance have a Gen5 2-lane PHY.
> > > > 
> > > > The device tree changes and whatever driver patches that are not part of
> > > > this patch series will be posted separately after official announcement of
> > > > the SOC.
> > > 
> > > Please rebase on phy/next, this does not apply for me
> > 
> > Hi Vinod
> > 
> > This patch serie depends on
> > https://lore.kernel.org/all/20251017045919.34599-2-krzysztof.kozlowski@linaro.org/
> > 
> 
> Why was this dependency not mentioned in the cover letter?

I mentioned it in the change history, but it was not very obvious. I will
note this and explicitly mention dependencies in the cover letter body in
other patches.

- Qiang Yu


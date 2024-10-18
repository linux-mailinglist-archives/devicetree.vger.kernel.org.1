Return-Path: <devicetree+bounces-112986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A47A9A4179
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 16:45:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1D0E11F2437B
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 14:45:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E1A11F428A;
	Fri, 18 Oct 2024 14:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="obvNDPgR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F5BE189F55
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 14:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729262701; cv=none; b=d7/JfGaUzJhCVKIA5cDctqSMZHlur1loJKUxpZmg3YXUbIiGk8gVep3dX6eRXCrSH+vit1zqcB6LpQVbkNUvpuNlZicvreIGJ5fBZQd0zwyRb2CzWV1nn7+3aIMNnwiQEEPerLkiQlQ7E4H6r9pct03Uw9ziSC0LRr9/D/u9bWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729262701; c=relaxed/simple;
	bh=dRI9Q9m5oWKpNhGc09GjrbC6mEoqOVD77CFKX8Irh1k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AY8wmrfbqz0FgizI/CqUWZDbQAIbfzbuwmNLym2br7y2nZefJl/ZTAwO7EeiqWSAHkj4BHHbQVLKFPhSJK4ISmotqBH3MCxWBp+50XCKsTc71TrmYuTTvGwj2eAVfyq9E+g/gn2D5dflAkksbsJ86adN/y/BjKOvLdEWMRYvnJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=obvNDPgR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49IEhbgb029274
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 14:44:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DnboCb+0FVHSU48yVj9gIhEb
	DOa0xi1JSucjdeRI/+w=; b=obvNDPgRO6z4q8lvWR3cd2mJCy0TuO5YM3RAbutq
	Uc9rshzRyOhnOOTpIZybav9xzOEQ4hj8rBmXyfc/MlTyBj55fyTk+bzqliCSCQyn
	W7cxokqNzj/tnM07kIm1sFF5SnPXNUQ5UoF/h2azvZMM9trkgk7eYf7mHMXKDBkq
	mAUvHiKzx+TF7kym1Od0WvngCDsjdpUyNnF80yeibI1lj0puGy6hMQBGqcqaxvLf
	+FyrYcC5YNwXzYXGsA6BunhhhP657RDHq97QQC7CWPXDUIjpVRQlwBNaKb784TCT
	T6OdnbjFooxIyobBEDvOI22JVno1uF3tkXKM4WFveM7/5Q==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42bhbq9kg1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 14:44:58 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-2e295559c37so2029403a91.0
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 07:44:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729262698; x=1729867498;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DnboCb+0FVHSU48yVj9gIhEbDOa0xi1JSucjdeRI/+w=;
        b=g/n8qdcNL7YB3DuDJteFwYc/YQvZFnCgjw4WXsDv4iI+57jElYtFYumfFIRWttdIeF
         XCd71n88fjlqZHnNTt8XJjbkounVEeVv6sre34lihM6vZY7Th1HrdloxC7c+NlTCJzWd
         CuhXzIfgyOpeUpfFHIvM4TtGMeLOOmIQBl4SRM7/d9hDYd2z4Y7d8X8uEQDApSTbwc3J
         8YDuPP0G/NyQLNBJlePTGNCFL0KF97YI7dlgnmG0jBTEo4YHVfx7c+BunYL8GcP0avrc
         nAMhv8MytYLEEROgTbxt5E7zrNgp0IXJLuHOV2xkhyQSFRr6esGDWHS//3qANGoDCcRG
         Dc4A==
X-Forwarded-Encrypted: i=1; AJvYcCU1tSliyFMUP2EuACMrzFA75VvW4O1ipvRO33Ivmec4G6XIHvF7EU6DiUfaEY4gwvZNWvBkfn3bG9Yu@vger.kernel.org
X-Gm-Message-State: AOJu0YzCgGMWFXleRuuqlujspLbkeosdpqOR9BKbyBZ/J2J7djQVfNNA
	zyrrxHxA8cHzAMGQkIjmkyHlFpb0sYX2GAl7SdrTCI1ntWPBhIStb0rsArG8KPw5ESQ+7CF5Kh5
	l/QylgMOwwamoRMG6FhW4vVsmvQqGNrUxEE+Oyj6COmWLIpKB7OEt+rAPOGpD
X-Received: by 2002:a17:902:ec83:b0:20b:9f8c:e9de with SMTP id d9443c01a7336-20e5a7529f1mr36683825ad.13.1729262697696;
        Fri, 18 Oct 2024 07:44:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF9uOBMK8wEYvEFNWhu7UwL8EMNZRI/GIuPJl7POb9ZfQQu3LYyDDG0m1qPae3L0eArzT7raw==
X-Received: by 2002:a17:902:ec83:b0:20b:9f8c:e9de with SMTP id d9443c01a7336-20e5a7529f1mr36683485ad.13.1729262697360;
        Fri, 18 Oct 2024 07:44:57 -0700 (PDT)
Received: from hu-bjorande-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20e5a71ee12sm13335395ad.61.2024.10.18.07.44.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 07:44:57 -0700 (PDT)
Date: Fri, 18 Oct 2024 07:44:54 -0700
From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
To: Shivnandan Kumar <quic_kshivnan@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Ramakrishna Gottimukkula <quic_rgottimu@quicinc.com>
Subject: Re: [PATCH 2/3] mailbox: qcom-cpucp-mbox: Add support for SC7280
 CPUCP mailbox controller
Message-ID: <ZxJ0Zl4iv+SZNUli@hu-bjorande-lv.qualcomm.com>
References: <20240924050941.1251485-1-quic_kshivnan@quicinc.com>
 <20240924050941.1251485-3-quic_kshivnan@quicinc.com>
 <daorjvhony2y2ye2b3tus37bzux4hqqmhftyjsem7fz5cp2z42@a7ftfpnuvbja>
 <037f6cea-28c7-4114-b542-7f12aa1bcb1f@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <037f6cea-28c7-4114-b542-7f12aa1bcb1f@quicinc.com>
X-Proofpoint-ORIG-GUID: rTy_K3r3yLKM5z7G62DHABZn1gfrWr6c
X-Proofpoint-GUID: rTy_K3r3yLKM5z7G62DHABZn1gfrWr6c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 mlxscore=0 bulkscore=0
 clxscore=1015 suspectscore=0 mlxlogscore=970 priorityscore=1501
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410180093

On Thu, Oct 17, 2024 at 05:22:36PM +0530, Shivnandan Kumar wrote:
> On 10/6/2024 8:03 AM, Bjorn Andersson wrote:
> > On Tue, Sep 24, 2024 at 10:39:40AM GMT, Shivnandan Kumar wrote:
[..]
> > >   static int qcom_cpucp_mbox_probe(struct platform_device *pdev)
> > >   {
> > > +	const struct qcom_cpucp_mbox_desc *desc;
> > >   	struct device *dev = &pdev->dev;
> > >   	struct qcom_cpucp_mbox *cpucp;
> > >   	struct mbox_controller *mbox;
> > > +	struct resource *res;
> > >   	int irq, ret;
> > > 
> > > +	desc = device_get_match_data(&pdev->dev);
> > > +	if (!desc)
> > > +		return -EINVAL;
> > > +
> > >   	cpucp = devm_kzalloc(dev, sizeof(*cpucp), GFP_KERNEL);
> > >   	if (!cpucp)
> > >   		return -ENOMEM;
> > > 
> > > -	cpucp->rx_base = devm_of_iomap(dev, dev->of_node, 0, NULL);
> > > -	if (IS_ERR(cpucp->rx_base))
> > > -		return PTR_ERR(cpucp->rx_base);
> > > +	cpucp->desc = desc;
> > > +
> > > +	if (desc->v2_mbox) {
> > > +		cpucp->rx_base = devm_of_iomap(dev, dev->of_node, 0, NULL);
> > > +		if (IS_ERR(cpucp->rx_base))
> > > +			return PTR_ERR(cpucp->rx_base);
> > > +	/* Legacy mailbox quirks due to shared region with EPSS register space */
> > 
> > Why can't we have the same code in both cases?
> > 
> 
> 
> RX address space share region with EPSS. Due to which devm_of_iomap returns
> -EBUSY.
> 

I assumed that was the case, and that explains why the legacy system
needs a different code path.

But, couldn't you use the same for the v2 solution, so we avoid having
two different code paths?

Regards,
Bjorn


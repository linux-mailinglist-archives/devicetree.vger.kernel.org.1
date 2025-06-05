Return-Path: <devicetree+bounces-183015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A5FACEEAD
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 13:46:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D54C51898933
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 11:46:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 617CF1FE47B;
	Thu,  5 Jun 2025 11:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foundries.io header.i=@foundries.io header.b="cdhSOKSO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CABA27452
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 11:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749123970; cv=none; b=GXwyz6FrVFcKsp++Q1QbNQXlaJ/kLdMjzJc+AWzWHj4NcAli9VPchmtLoLJWkQbFdR5z0TVInCFRN2TBoCsTCdIKRTv34jsoLGicBpgMDZtG3lR3UJP/OgtGu6oSgwk7kca1Rc3nY5T9ShSQpDjs0OT4qhNkouRftQt6O9WeUK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749123970; c=relaxed/simple;
	bh=iQO05gpQItZLYXG1Zfr8HBbssUlGS1zmiv5QaiGMLKU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OlggM0ljWJxbuz5jtFHMMH1X+w2r49pHVeUfkNJkDrCyVQBiv6+suzTGgm+dj8+1vf4/QMjX5qaMEmtdAuscRJbVrXBMhscIgODZ3UgsYVtIiP1m2/p22Yjiv3rIFOsoXCoWNXcRb8fK4TfUJNkHCSIwj5TZRYKUcf4rQ3AsgWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=foundries.io; spf=pass smtp.mailfrom=foundries.io; dkim=pass (2048-bit key) header.d=foundries.io header.i=@foundries.io header.b=cdhSOKSO; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=foundries.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foundries.io
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-54e98f73850so981160e87.1
        for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 04:46:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=foundries.io; s=google; t=1749123966; x=1749728766; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5SAInOCIc0R3rDAo0uRf/uJKBXTBXwLj+VmUCa2gyU8=;
        b=cdhSOKSOe/H9RrUDAvJCqrSisDESfRQ7ZHW22Se4bPDYQM3eKQaqUBQQiqh9Yh2CyY
         8X85Nb7mbg6KInY9dstrwrovYMDq5y9eK9xa1mQVcIF7BCVohLK37u/E1nkewvr6+mCA
         wd67aXdhUwuDk6a1WYptwPtaskJDJpFl9gtgsSfpFJ6S8o+qAcXeSaQzOLpfLd2LcwFi
         UoRNzUVbV2li4iudSO8OJffrR6GxVEFlZaxf89apjaMUXepEs/5mgd8IciBW6A4iFKRL
         81ZBkNzkcEELGLTHtP6Z6WltIzsgvt6DnpemWZSGZW/XM4B3bjazJFMSMnEXrkeOSh4j
         b22g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749123966; x=1749728766;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5SAInOCIc0R3rDAo0uRf/uJKBXTBXwLj+VmUCa2gyU8=;
        b=wCaN1UUGH9knj+Q1ZjPY2QfIL2J+qC7m7ct7uGF/O7oXb7C7Mx8KmN37Z26sLHFTU3
         7NWGEUWmX4TY6HjdvASGRfsH+0Lz7mJPhBpioovw8b9JDSx9knINsB0yZyn6zfotyLco
         CDuu/zb6bQgu/VqNhnIT9XdFKUZtukCF2fxayHSJ3zLDoYPDEHEZ4kgnqr+Vm6iJXW+D
         8faW5qpK+LVVXkms5BYudwPNZnnkYMWd0mhnhubWV+2oAx08oT7xQvY5jTZ0JftSZ4qD
         CEx2dGWnu/6p6BrKRG6pbUUFlWbla2GUN7bwrwa8ZuqNtHwhq8Q8iVL+7HL8IRwz11no
         MpRg==
X-Forwarded-Encrypted: i=1; AJvYcCVlWfuBfbvsOMakbJ6mxZcaPerX70pbhuy+ZxBs3Tf+57DKz+c6GZa38/lxn0S0i9/ml0aj38lUz/EX@vger.kernel.org
X-Gm-Message-State: AOJu0YxL6abaW9ZQouCY5RwvzlU+8cj6eluhOAkEnMjtQkj96jYcfnwY
	ybgs2lTEyAeBV4WfHgb9IQtjH7KK7+aDYAn/MpQwS1tZNxsSXUj6u9CuH3VMw+H0NJ8=
X-Gm-Gg: ASbGncvILOLbD6RrcMkeHO8ym9qW7MA9SJ222awNA4MymwZ+ynmu8UjuH/zbiB2wIGD
	LYF72mLz8sxSMgxrEcHCMyDTs5DXsAknrX+m9R2EUWxU5xVkXy9ofFFas0ulJGaDe992ELPnmql
	YADSC5/ojFI/BVrPjqqCjf0SOsdR4WSRFHcHhMpxNI1dtErV1RAP6oTukbm/KPE6XnMPCVMcObg
	64QVUskEf1S76+JcRI1IFhAyThiCrMuO1rqn/N0vcHP+F6Yde4ox4fXJMlawCw8xKUxc7QHKEcQ
	ItGAr6GdFjqWH/beIcys+xgl4huWb7Un+p3HRxzyiAlpU7wYVX6izydwVQTgJ9hee+W/bcHFSwW
	9LS3CYuSm+I4yrYyNeuJnJsv3VULAOTxTuJZ3foXghizX
X-Google-Smtp-Source: AGHT+IEsAAI7LB6jIT0s5Hgp6imppc5SwEXxcbKnPFUWJbLbdX7aqzZ+RhH6SI0L2rhRu3BRtYgb5w==
X-Received: by 2002:a05:6512:104a:b0:553:2450:5895 with SMTP id 2adb3069b0e04-55356af64a3mr2190303e87.4.1749123966226;
        Thu, 05 Jun 2025 04:46:06 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55337910e17sm2594296e87.153.2025.06.05.04.46.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jun 2025 04:46:05 -0700 (PDT)
Date: Thu, 5 Jun 2025 14:46:04 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@foundries.io>
To: Renjiang Han <quic_renjiang@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Vikash Garodia <quic_vgarodia@quicinc.com>, Dikshita Agarwal <quic_dikshita@quicinc.com>, 
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>
Subject: Re: [PATCH v8 0/3] media: venus: enable venus on qcs615
Message-ID: <jib57gdjieerjgq22ghgtqtl2haohlgsldwn7krbsqyjmntvvr@4dql5exqyu25>
References: <20250530-add-venus-for-qcs615-v8-0-c0092ac616d0@quicinc.com>
 <wmri66tkksq6i3hfyoveedq5slghnnpozjzx6gck5r3zsiwsg6@xevgh54rnlqd>
 <285cae4a-219c-4514-818f-34c8225529de@quicinc.com>
 <t6niql4jfotjnbducypwxkdjqt3or7k3rwmltvbhifmpphsiwy@er56ey4v2pzo>
 <903b0a04-f905-4a9f-b637-b146495988ea@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <903b0a04-f905-4a9f-b637-b146495988ea@quicinc.com>

On Thu, Jun 05, 2025 at 07:24:55PM +0800, Renjiang Han wrote:
> 
> On 6/2/2025 2:16 PM, Dmitry Baryshkov wrote:
> > On Sat, May 31, 2025 at 08:05:24AM +0800, Renjiang Han wrote:
> > > On 5/31/2025 4:27 AM, Dmitry Baryshkov wrote:
> > > > On Fri, May 30, 2025 at 09:32:12AM +0530, Renjiang Han wrote:
> > > > > QCS615 uses the same video core as SC7180, so reuse the same resource
> > > > > data of SC7180 for QCS615 to enable video functionality.
> > > > > 
> > > > > There are no resources for the video-decoder and video-encoder nodes
> > > > > in the device tree, so remove these two nodes from the device tree. In
> > > > > addition, to ensure that the video codec functions properly, use [3]
> > > > > to add encoder and decoder node entries in the venus driver.
> > > > > 
> > > > > Validated this series on QCS615 and SC7180.
> > > > > 
> > > > > Note:
> > > > > This series consist of DT patches and a venus driver patch. The patch
> > > > > 1/3, which is venus driver patch, can be picked independently without
> > > > > having any functional dependency. But patch 2/3 & patch 3/3, which are
> > > > > DT patches, still depend on [1].
> > > > I'd say 2/3 and 3/3 still depend on 1/3, otherwise we can get video core
> > > > on QCS615 over(?)clocked.
> > > Agree, so we need to make sure that the driver patch is not picked after the
> > > DT patch.
> > Worse: we need to make sure that the driver patch is present in the
> > branch which picks up DT patches. Otherwise building & testing that
> > branch (which is not unfrequent when doing git bisect) will fail.
> > 
> > The easiest way to ensure that is to merge driver changes in v6.N and
> > then DT changes in v6.N+1.
> Yes, now DT patches are pending videocc DT patch. I think the
> venus driver patch will likely be picked no later than the DT patches.

Please read carefully: it's a question of the patch being present in the
_same_ branch before DT patches are picked up.

-- 
With best wishes
Dmitry


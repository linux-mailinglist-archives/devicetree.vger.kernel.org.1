Return-Path: <devicetree+bounces-171797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3C4AA03AE
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 08:47:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4513A5A31ED
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 06:46:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E107A275101;
	Tue, 29 Apr 2025 06:46:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N6XDVcY+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA202750ED
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 06:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745909203; cv=none; b=n76/h+yDqYHa80DETBR3gKf4FkY7UyMS67KqgQe0OtI1imTqpBG+D88NcAnFgzU/VG1EgV1yluWSGjxwMhMmBn+4qWuhCj6W1T+/RYG+GUk35sZQAhd6AC3ezDTOPjLNA49x7wS34OHK6HTHik7lhq63UKVlpoQTMaAsxp1dw/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745909203; c=relaxed/simple;
	bh=1pIprI0EO05HFaFO5ZwHNaOGBqkqOpeJf8DkIAD7OnA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DBvns2nvqlBO4oJyRxbLKn9hJYs0TRDuxGnG6u5fNY4gA/Dbaf2bqjygXVFHEncuD5nNEmqENOoU6r/0OOf7WUxP0XXNi49piGkKsKKjZiyX5RGQoszaKe8K9wFCpd9pYgS48zElh03uNhDezakaZrU90rjpF1XyISq2T+A8Kuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N6XDVcY+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53SNqheS001630
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 06:46:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DZu3TV8trj7jEXy9C3oxl4Sy
	0FYWykPDbiLWiHrWJao=; b=N6XDVcY+mrQT+m461o4bwqUWem/L+QiXXwUoTQT0
	lyHKLGcln/unMyGQcwf3WRs2L8baOoyGPxiO8Fi/7QY863ItKpelgREWLF4Q56DY
	a2y4pMer6xyrT7r6p+TKDcBBG6Yyfj5B3/+xfPSX+CXgBLj+VrNHcsfk5JHYW6rG
	0bQA4qxj155NOjhDwrUTJwVwUNCzpyzqoR4s2q1rTWv5/UL0JWpMaFZnnCOodCbY
	8Sbji9o/STMdR9CM3wM6C16DPPrgryVadXWag3uF19gcNf8KURm4R2fLwomWVN46
	8XbEMtYYzl9uMe1NEUhr/iq9Bha0/5C7U3N1Xo83+s6ZJQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468qv9kgpg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 06:46:40 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-47693206d3bso136556181cf.1
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 23:46:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745909200; x=1746514000;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DZu3TV8trj7jEXy9C3oxl4Sy0FYWykPDbiLWiHrWJao=;
        b=AqwrHlFZMf0PNYLiuzbKE9QCyVbffvc83holGKK44amSip51/B13Xgceg+kT6rilce
         p2HJZ51j+W7VCrY5Raj32KHWbDLO4jUMMhGQtnweeug7/wkeV5OOZbhGmg+WYF0swgIo
         2R8O5Z+wBDkRxbhBeWy9mSsK3B3AiHEqWQv3M4l4ZVMGbdtPayrcdogJwQl1hfRJP5OO
         9z5QP3R8Sxbky53Ty8jVV69JA7hrLHJuFqpISh6oHSxHyasIGqZ8ljeAV3CoxORK6ps5
         F9BjPhXH8CHkw1J1jaDfibb2yMsaMLmQdHFNLplpqvIiOAaX5o/yU7s5xkYILpGNeTV2
         olCg==
X-Forwarded-Encrypted: i=1; AJvYcCX6hICP/c9VOXVaatyounC8ToHg0BDPJ8sVDUFLXvbQEdNkdv9YvhizEL+pcPdDtguaw1EPnuJyGNx8@vger.kernel.org
X-Gm-Message-State: AOJu0YxpV3DjxDcEje+eSbIj+9zIbH1dHAFec49JNJWELlJzBPHoQfuB
	mn3d0lbOWiLq+R+sR24ijA9tynJQobAJdc9ikpLz7+sUgvcPG098wiAAeFebClDRCRQComE25NI
	+FVBRlg5SsmZINdQ41GA7NqPhHIjmYu8QfFeDYJOM8gUZXPo3nbZa0r3IXirH
X-Gm-Gg: ASbGncuho8fUO5vx5dOnmjPSlFft9jUN4Yz78CSefCxprWbGjfWJkCFhZRgiRZJOlIb
	iOohUHSJxAU0A+xXg448qOYhZJ9HNRfHmIS/zBBaVKZD61vGucJITkYvGBhD0flNtJQgzyNj6Bk
	CNVI/hPPLhyzV3JrhvZv2zEtFgZHxOp/bcuIUbYAFo40Xk3qjfrd6MPPrGAXhaqj/TUAbcxvBkG
	Bov65s+4Mf1OF8E6h67FeI8p16Yh3F8jSx9fasW//41IlYPZG9OuL6YiUmZ5fOZFnR6NT9Fz+4R
	3gJiE2Q052v2IelPZ9G05bH6ivld/zJU0ZtUEzPlGf+RNPlDM81yRTW8xe/WBlo/OOy0ok86x5I
	=
X-Received: by 2002:ac8:7f8e:0:b0:476:a967:b247 with SMTP id d75a77b69052e-48133562059mr203907611cf.47.1745909199796;
        Mon, 28 Apr 2025 23:46:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEMg1rHdHs2/nbrDBu8fCMcRUEKSoFdhUgPQjOmgqhIt37Lk0kiYKjrtVvVlpe5Endpr+SpyQ==
X-Received: by 2002:ac8:7f8e:0:b0:476:a967:b247 with SMTP id d75a77b69052e-48133562059mr203907431cf.47.1745909199361;
        Mon, 28 Apr 2025 23:46:39 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-317d206b703sm22953181fa.114.2025.04.28.23.46.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Apr 2025 23:46:38 -0700 (PDT)
Date: Tue, 29 Apr 2025 09:46:36 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Stephen Boyd <swboyd@chromium.org>
Cc: Tzung-Bi Shih <tzungbi@kernel.org>, linux-kernel@vger.kernel.org,
        patches@lists.linux.dev, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>, Benson Leung <bleung@chromium.org>,
        chrome-platform@lists.linux.dev, Pin-yen Lin <treapking@chromium.org>,
        Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
        =?utf-8?Q?=C5=81ukasz?= Bartosik <ukaszb@chromium.org>,
        Jameson Thies <jthies@google.com>,
        Andrei Kuchynski <akuchynski@chromium.org>
Subject: Re: [PATCH 1/7] platform/chrome: cros_ec_typec: No pending status
 means attention
Message-ID: <zjofw6fe5aznnqphtneccj426vqpbimm23kcpi3xts6p6zhftk@kjhrxvhanamm>
References: <20250416000208.3568635-1-swboyd@chromium.org>
 <20250416000208.3568635-2-swboyd@chromium.org>
 <6eeb7bca-6018-46de-a7db-7189d60c0942@oss.qualcomm.com>
 <CAE-0n53ypGBXAt3frrbfAsbJZEkxK4BCB0+3MWOFRxZ9E+6P9Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAE-0n53ypGBXAt3frrbfAsbJZEkxK4BCB0+3MWOFRxZ9E+6P9Q@mail.gmail.com>
X-Authority-Analysis: v=2.4 cv=AO34vM+d c=1 sm=1 tr=0 ts=681075d0 cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=yV4NexEFXbUgmP4BVSMA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: CMlgdIw4u-1fuaCoIeZ4OFvRWUTed8ut
X-Proofpoint-ORIG-GUID: CMlgdIw4u-1fuaCoIeZ4OFvRWUTed8ut
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI5MDA1MCBTYWx0ZWRfX9SmBQB5DkxzI hRkF+1LmT0nCbrvcTx9QA0p7s/wwh7txjn3MCfuOU/5TSlti2x6NjRdQnoGyZzBCi4cm4Lb80d4 wPHDXT65oLvz/zAi3VB5za/zDUPV3Bz7DoJI7mn1BSz/A+OOMR+NWfsZuImco/d4e5Qri8LWCF9
 I66HvD+fcxhQxT3LTdiOvB+s7KMIoE7URcfi6NF5WWopFEDAljNLlyjSqIGM3ir0bYoaG8D7B3j 8/Ka2YP0i2yPwLvS1MOY0PpXELUNgziKck8A//SrnSAadO3fEwXFUZVOJ4ss1zd3nWnXzXV05JD +Gkb7kuU88R28mrlScSK2lyeVfLqLTJy6BmjrIDgyt7Apvu5iMr4qN+X+tyGUPQFfNDcMxak2dt
 PyoB7zGPqh6MvBQVviV+hrvx5uZIEHcSh/ktnQir8S8w3BuYi5OomQZ/VvNH2jfnT+kvdPpp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-29_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0 suspectscore=0
 mlxlogscore=554 mlxscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504290050

On Mon, Apr 28, 2025 at 04:55:27PM -0700, Stephen Boyd wrote:
> Quoting Dmitry Baryshkov (2025-04-22 06:38:17)
> > On 16/04/2025 03:02, Stephen Boyd wrote:
> > > If we aren't expecting a status update when
> > > cros_typec_displayport_status_update() is called then we're handling an
> > > attention message, like HPD high/low or IRQ. Call
> > > typec_altmode_attention() in this case so that HPD signaling works in
> > > the DP altmode driver.
> >
> > Fixes?
> 
> I didn't put a fixes because it only matters to make the displayport
> altmode driver work with the typec port which isn't used so far on DT
> platforms. I view it as a new feature, not a fix for an existing
> feature, because we don't use the altmode driver.
> 
> It also seems like it was intentional on ACPI systems to only handle
> mode entry/exit and not HPD signaling per my reading of the mailing
> list.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry


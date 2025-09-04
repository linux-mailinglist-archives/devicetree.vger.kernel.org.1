Return-Path: <devicetree+bounces-212499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DE826B42FAF
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 04:20:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A1276189042D
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 02:20:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AEA122F383;
	Thu,  4 Sep 2025 02:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HYWdy/0/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B906222F74F
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 02:18:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756952283; cv=none; b=k1hl0/IxSVxqaRvZVj/vwKQySKcp1Vp1c5EtkbYX6NlAmM1skVG74/fo4LlZ+K9BGrdT2oC3EYU0/GYkfo3KZB97I9skyva4BMxlRp+8TdUEffX3xM0rIL47YOkAQm5y9EpchLHPvN8f6WNqtiSwlGX9NSD6qcOVCfa7dJeq2Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756952283; c=relaxed/simple;
	bh=h5ub4hgLTHJyDevsjM0JdIAZ9nXjM9Htv/6O+vrKhvQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G0kAhO2iQ847YekoAQKVqU+WXrDNQ42vUaVRmJxQcIXghSj+dSHA9bM1D+nRtg+jY2dnKR2vjav0LzmCr2o3KR5kornxa4wVgUdnwkbceloRZu8yKaUxVnyMWYy8t4ctGBlKccsXOuGDKWm9Q0HPhtCruyADymtEnPFKMUn+9WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HYWdy/0/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5840oL0V021842
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 02:18:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qkFwydJsxqdgKqOJsAZ1HDk8X8ftVkpre+cMSSd/UDM=; b=HYWdy/0/zGXNvniC
	YSpkv3GBj1r6CrCdX69ovIPoytEWNU9RERQfYcx2oTjSxWrQ7mq8T1eTnMmsmgWZ
	VTYYhktA8UPp+u2F5OfPKogforhOErJ0WP0PM5XXOU6igHHSexuX5OiEZzwPt8mg
	jS2IflRnkmp6N7BXM0Tz4p+1sf7wU6L0RuJz3V4XMNZGXSeL59g0a8Tf89XjNSBA
	0hhw0v0Ls5ul5tK4y06uwohAFQIsed+krasNFCaJobCHRcOX3V9j2Anc77/MZt/0
	kwUL5ecFYDDWunFW/R4ZbPdl1Ra8lyt/xdj38Aa1MHNhdjDqnPwOuA3Lxa/dDPNl
	pzvbvw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uq0enyww-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 02:17:59 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-72108a28f05so14451206d6.3
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 19:17:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756952278; x=1757557078;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qkFwydJsxqdgKqOJsAZ1HDk8X8ftVkpre+cMSSd/UDM=;
        b=umZzd+0gp3U1Wtm6xQrMUTDbUrRL/l+Qm6PpdaAtHdOOn9954i20Yk/vAl/TrnrY4m
         GjP5MwG2aGu4Ta7ts4SER8Fycrs+9Vz+YdYnRZbZl6h8ZWIiNIV7kYy1xhKS0Kf90eE8
         HEBzaHpXA1y3RzE7GfhDA0GH/ovGxIugwx1h0bP017pxyHqJ1hErpkdYB6Alp1HUWL1v
         JG6cfc/DXHeDBrm3zjjdpq+ndDkWMJLBMioiHbFkxHs/t+/Ro8Wo7k1nrjMXUsaT0YRe
         5spONi41fpY2Md93mi64tYox1x1AOsQSyXi/SC2fOihnqUc02+JSDaVGYhfODH4Bmc0m
         0Jbw==
X-Forwarded-Encrypted: i=1; AJvYcCWBnlEOGkAWO9PqmPD5pG9zFA+930yZ8mREE7e7iz98GLyrG3cKC5pZuZb2jOUmOJjGHKI4l6cIkZig@vger.kernel.org
X-Gm-Message-State: AOJu0Yw45ZSdP5jDte7/wButnXFes/Xaf5HQ2FQGQQ7eCTp0VP1zZKOV
	pUvmm8xT+53I+MXUDz7Urt8TN78W5lEspbtIYdB/evgvWntO1q369AA9giLmCGfOAWucmmPQhtZ
	maglD8TdrORPjPsXc7xDwo+qEOYOzMs87hiKmi12ci3k7yc8kwW9poz2jrdt38MkB
X-Gm-Gg: ASbGnctjXjrrqHVm8hXb4LCDcxwnzBzxuXH8vJeqH+GSXcAROysaBOK/Uc84GusQ0A1
	kc3HIuBf7q5rgCfWr5Orao3RHjh/NW4KsouBFRey25WIgX2LImpFzlW7U8jzFCL+0iqck6/c3dK
	iQiujxgSTSBmbZJzSd3O6y7SFd+V4gAK/P48Y3emBbvLDT9OSjmaO783FAzsDN+iZ2Jdy/2h/um
	H+rCTc7lv2FRELlDJVcxtHJxGZ6o6p7PpNHRpdqPQnQLGNv13sPo/FRDoXSZGBfiUCFAVOuScMd
	5JKWuJUXXVUhVs5rId/9m+iKZJQUVS5S22HTvD+zGuXfQQv7VbLeHUxpw9IqmBJm7zn6JqG5jtA
	O0QHhF9/zFOUpv2MNFf5i4pgmLkI9v1BcrWzY2pVlUXfOH4zrqmYM
X-Received: by 2002:a05:6214:501d:b0:712:e30b:ef1d with SMTP id 6a1803df08f44-712e30bf1f3mr189032686d6.63.1756952278136;
        Wed, 03 Sep 2025 19:17:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEpnx/oWiqnFeeBH9c95exPgNTFpxW3/4KJo+Lqf24gUbaClGKKsJlqB65JLkcbt0YEKckERw==
X-Received: by 2002:a05:6214:501d:b0:712:e30b:ef1d with SMTP id 6a1803df08f44-712e30bf1f3mr189032376d6.63.1756952277581;
        Wed, 03 Sep 2025 19:17:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ab928f3sm863017e87.39.2025.09.03.19.17.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 19:17:56 -0700 (PDT)
Date: Thu, 4 Sep 2025 05:17:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yury Norov <yury.norov@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Andy Yan <andyshrk@163.com>,
        mripard@kernel.org, neil.armstrong@linaro.org, andrzej.hajda@intel.com,
        jernej.skrabec@gmail.com, jonas@kwiboo.se,
        Laurent.pinchart@ideasonboard.com, maarten.lankhorst@linux.intel.com,
        rfoss@kernel.org, simona@ffwll.ch, tzimmermann@suse.de,
        knaerzche@gmail.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v7 1/2] drm/rockchip: inno-hdmi: Convert to drm bridge
Message-ID: <irvff5zmeqyy7yn3idc5rr2ekx5gmpcib45rrqk2vhkt33mdy4@q346i2jkehtt>
References: <20250903110825.776807-1-andyshrk@163.com>
 <20250903110825.776807-2-andyshrk@163.com>
 <5255838.1BCLMh4Saa@phil>
 <4ox7yh3i47odinoaalzjz7d3gvx36bxbaspo6qfvvvl3jqhdiv@24ownjco3ud2>
 <aLismmDJfusG0x0Z@yury>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aLismmDJfusG0x0Z@yury>
X-Proofpoint-GUID: 8qVdK-_AfDm6u_1n5csml_JehEe0LYyv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwNCBTYWx0ZWRfX/ZUt8ZM2hjTN
 mrvStg0b8Ec9PTvM54/wk1A+IrMoFmlJDYg7175wikUL4fdLQifn7dnZ6IaBd1hGPQYpnzGtvx5
 WkuldTkVWPc9sh9xVtLlCUdCbcbgQ2CS1y7ZzDas/OdIBy4mTM7dDmh3VLPRCaAb6ZiJVoR6gSh
 oUxORM8pGIcE93Wp3zolL4EN4+Yh4h8vCVmNF+YjLYzDeCjdMXZKfqUwbtLyUWJmVeO5tv9RLUy
 mLG3D3Bzy32gyL4nDztfBn584sAie/lhABg0q7UpL6ROG4SMygsg/aBlnJg7seynHZFbHkIcZfD
 qbudgxJhNTsmhAvcqLSTUUkudTR5axR44hUPxpw7IoYY9qXsq3NQWqBj+6UIywmXfzyIk4qCVCw
 vswZz6yZ
X-Proofpoint-ORIG-GUID: 8qVdK-_AfDm6u_1n5csml_JehEe0LYyv
X-Authority-Analysis: v=2.4 cv=ea09f6EH c=1 sm=1 tr=0 ts=68b8f6d7 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=Fob2wsIVxNtBE8oepsMA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_01,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0 phishscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300004

On Wed, Sep 03, 2025 at 05:01:14PM -0400, Yury Norov wrote:
> On Wed, Sep 03, 2025 at 03:30:47PM +0300, Dmitry Baryshkov wrote:
> > On Wed, Sep 03, 2025 at 01:59:51PM +0200, Heiko Stuebner wrote:
> > > Hi Andy,
> > > 
> > > Am Mittwoch, 3. September 2025, 13:07:38 Mitteleuropäische Sommerzeit schrieb Andy Yan:
> > > > From: Andy Yan <andy.yan@rock-chips.com>
> > > > 
> > > > Convert it to drm bridge driver, it will be convenient for us to
> > > > migrate the connector part to the display driver later.
> > > > 
> > > > Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> > > 
> > > more like a general remark, this essentially conflicts with the
> > > big hiword-cleanup [0] that was merged today, as the inno-hdmi driver
> > > "lost" its separate HIWORD_UPDATE macro in favor a nicer generic one.
> > > 
> > > I'm not sure what the best way to proceed is, apart from waiting for
> > > 6.18-rc1.
> > 
> > I'd say, the correct way to handle would have been to:
> > - merge only FIELD_PREP_WM16 addition into bitmap-for-next using
> >   immutable tag
> > - merge the tag + all other patches into subsystem trees. Otherwise
> >   that series can cause a lot of conflicts with all affected subsystems.
> > 
> > Yury, would it be possible to implement this plan instead of pulling
> > everything through your tree?
> 
> Yeah, this is 100% technically correct way of moving things.
> 
> The problem is that driver maintainers are usually not quick taking
> this type of changes. In my experience, if we merge #1 only, we'll
> end up with just another flavor of HIWORD_UPDATE(), maybe adopted
> by a couple of drivers.
> 
> This is exactly opposite to the original goal of the series: nice and
> almost complete consolidation of scattered HIWORD_UPDATE() versions.
> 
> So far, there's the only conflict with the others, and Andy said he's
> OK to hold his series.
> 
> I would prefer to have all those patches in bitmap-for-next for a while.
> If there will be more conflicts, then yeah, I'll follow your route.
> Otherwise, let's keep things as they are, and encourage developers to
> test their patches against linux-next, as they normally should.

Ack, thanks for the explanation.

-- 
With best wishes
Dmitry


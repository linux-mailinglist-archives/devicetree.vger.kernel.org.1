Return-Path: <devicetree+bounces-182448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B468BACC485
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 12:37:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 70391168797
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 10:37:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC1B522A1D5;
	Tue,  3 Jun 2025 10:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hlcSe1b2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56318221D94
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 10:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748947033; cv=none; b=mnDzmSxpZVMu2QZ/o9Y27in0nE4LtpRq/snW9GVdonZ28ddofI8zauYryb7rLPJQAw7T8Z+lbEh3tZqJ33goCwLd4Ic45cYk62Idmeqoq/17dRaYjoVgz/Z5gziy2OtRahvphjX5u2Gtw4GGnNARWo919HcrCaj1D/R4cmB5bCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748947033; c=relaxed/simple;
	bh=uqpOJv2wigJPKhBBU0tlE5lRcyIvfno4JsOZUYts/FY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mk+ntwRJAS8b1iGy1+EPZKIGKNH0We3pNhPGtvo/ZJ5EHrdVcJ5cC37IVHST4YOHe2gO+Y/au8DqCqkFXgf0pvwm4zpplPbT1MXn3jNUSVCdblDCUZInOBfym9I+dJtXYFaTN8fCMcYEP2FVPhWfs8iMVAkKziZizDIWCrruo40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hlcSe1b2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5539JLQe006553
	for <devicetree@vger.kernel.org>; Tue, 3 Jun 2025 10:37:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	w9uWNnzZMN7gxXGGetcBuxHkVFtdiwfBWdURBEwcqsI=; b=hlcSe1b2m80sbOH+
	HrmJDeiCebvVITjj3d/gHYyowy3NuP8JYUV/BR5d8mbbzf1KTrwRKFRvXBzzL8uv
	HrhbhuseCaIT2KZe4HGcmug2znR5CnaNSW7jRx6v4bcAO9He3/4vmow2zhOJHBWR
	mZmkryhInHOTzytu69Vh/R0rsIhRX5ta/bM31l5wufZUzxvKvH4Uafjx0XhS9p4A
	Y8jCnyLguivFvriquzrkWchJZO7/c92KkacJ/py5QD8onnTTmI3+OBg5i9LMqcMg
	DX2MnNFuXPgLHNQt5SkdcuIR99f4AANY9XAoSetwDrpq1EVR3I5HxSIOTo6RbqRG
	LPv4bQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8st8c7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 10:37:11 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5f876bfe0so876151085a.3
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 03:37:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748947030; x=1749551830;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w9uWNnzZMN7gxXGGetcBuxHkVFtdiwfBWdURBEwcqsI=;
        b=rgrlbDJ6cIIeSbNgvRLJdlJu/2RQegB+z5uTvtyDMm9uONsa4tGidpHK3nZ5qA4WCe
         El4svGm5oolwJA5S3cSh25Y4hkYytb8Lw8N+M1Srf0Yi+Q7sfc5HxxopHRtTu6PtN8Vu
         U5LtYa9GRlUVnREvu2CkcKSKDaK3lrEaOwhF+mFhTbc5SaMbi/LAAoTwEnhpbe6Jl55H
         9Uum1eg5K/BuwGg5WiTQJ1g8rd9OqZF7sxy4y+IkwRlDTTSgNsrciW0v5XXsc1tSp+l5
         vgMkxSTenMLq2gHwQZKWYVje/txvGKUeATj3WF5Tf2ZSVeYovAeR8rmtgXx0zcScp9qa
         ElnQ==
X-Forwarded-Encrypted: i=1; AJvYcCW3aewRVet7tfG5UNjuoSFInxun0aF9dOTZLZ6mPYoRcuZ2Cp0bhTTa7wMkjeqZnkCPAiehl05uTXea@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0/ydftMflJTh+iTQH6ZWmf8SBxdG3YFIHh1WNGNeWWFdB9oJk
	8J+Xt90imV0WlfsNWH4XWTY4gUd1de/r3AkXCTAS2g3EZqSGfoVhNJE2CX1LiKLwtv/f0SaTvOk
	KtcNPhfT6B0go5YSzW5XYrEFvuhZvscWBP5nM30Dl/jnzzJa3YyZatFk5juxC/Smb
X-Gm-Gg: ASbGncs2CHS+ScS5lrnGFnSo6oLEQQM7oH5WGF051Caftjyix47W1sTF7EK1fIlNcDQ
	713QO41ZGS6RXsAc1AVsHtxq0fTVPIP5bGjul5vvc9L7fNbgf1LRYyc5WCyLcudAvxwBIn1yxkD
	srUcoCqKOKktlbEzDROHaGJOsakKVj+hpyfQWAK4e+Z5+gZ2UU9SDUogd6Cdl6gcvsPCCnvvYRl
	bF1GFM0PJuoYZswEkhxNi1nFFORAcS1xwZEmLU5etrxTf71l1pWYC1rEm0tNRDbxggwKdLff3/j
	FRT5rKE6dUq1TfYi7eOvROHrDTeZVVZhGqjKBsSWp1SpHJ7rpWGL2e/TlBTY7DaMOcII/QPaRXs
	=
X-Received: by 2002:a05:620a:3f85:b0:7c3:cd78:df43 with SMTP id af79cd13be357-7d0a203c941mr2733685985a.58.1748947030014;
        Tue, 03 Jun 2025 03:37:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGcaWHfUMt/J84blqUHOVj38V1G/bCnq6PQ19HYI5oXarRw/p2CQ+daA0/OPAIVimxK24L/Xw==
X-Received: by 2002:a05:620a:3f85:b0:7c3:cd78:df43 with SMTP id af79cd13be357-7d0a203c941mr2733680685a.58.1748947029464;
        Tue, 03 Jun 2025 03:37:09 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553378a00d8sm1888642e87.82.2025.06.03.03.37.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 03:37:08 -0700 (PDT)
Date: Tue, 3 Jun 2025 13:37:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
Cc: =?utf-8?Q?Gy=C3=B6rgy?= Kurucz <me@kuruczgy.com>,
        Sebastian Reichel <sre@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>,
        David Collins <david.collins@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, kernel@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 5/8] power: supply: qcom_battmgr: Add charge control
 support
Message-ID: <5knsdgk7o5zifkvzlrqiplmhztnsyhlxnqiuikqf4l7wkx2qvh@s3vzkiezw2bc>
References: <20250530-qcom_battmgr_update-v2-0-9e377193a656@oss.qualcomm.com>
 <20250530-qcom_battmgr_update-v2-5-9e377193a656@oss.qualcomm.com>
 <f2e0f1da-c626-4cf0-8158-8a5805138871@kuruczgy.com>
 <8bb3a056-c00f-4ae0-a790-d742d31f229a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8bb3a056-c00f-4ae0-a790-d742d31f229a@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: VojolQq-fD_MHy2rlS_M9YPlv_VSF9wM
X-Authority-Analysis: v=2.4 cv=EPcG00ZC c=1 sm=1 tr=0 ts=683ed057 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=6IFa9wvqVegA:10 a=DVxyIStym39DqTwfPQkA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: VojolQq-fD_MHy2rlS_M9YPlv_VSF9wM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAzMDA5MiBTYWx0ZWRfX5P/GA+p/HYQR
 7SvMxS6R9A8aSXb+jcbIlxSelvutsUc+yNQDjbgZdTH9lhmS23OJlHgBqGzrgCY+FMurVhKpXfp
 XNh1xYnq0aCK+g+TJfSnzueq5foHD2aQswZ6NwxN7q4GhlrkfW2aVE7R866Ne6TtF3xNfT3KgoX
 czPmKu0hKmEFWsnxsWAbuLbpd0CpS3sueynkuHeavAopK2kveqILmuAoxPa82tgh+oUBHsWCBj5
 2roMPBVuRW4XM4fKSlHIs8A/MRQDFc/fm1jGYU1Var9FlGHYEING3jKMjPs9X86nq6U9qjDdo3o
 m9iS403h/q5AQC/s4VRDOLBiFKX7K/4XYercBpQvP4AgvLR6xa1YlNFmm3u3L2P4zawlHZR+MbT
 /aqI6mQmh6GFjeIlo4nHfbpfKY/U88giPtS9KLo6+OftH8dKJH5Ed6RR2NoS5OF6NJyOL6mo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-03_01,2025-06-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0 mlxscore=0
 clxscore=1015 mlxlogscore=718 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506030092

On Tue, Jun 03, 2025 at 01:48:11PM +0800, Fenglin Wu wrote:
> 
> On 5/31/2025 6:36 PM, György Kurucz wrote:
> > > Add charge control support for SM8550 and X1E80100.
> > 
> > Thank you for this, tested on my Lenovo Yoga Slim 7x, the limiting works
> > well, I finally don't have to worry about leaving my laptop plugged in
> > for too long.
> > 
> > One small thing I noticed is that after setting the sysfs values and
> > rebooting, they report 0 again. The limiting appears to stay in effect
> > though, so it seems that the firmware does keep the values, but Linux
> > does not read them back. Indeed, looking at the code, it seems that
> > actually reading back the values is only implemented for the SM8550.
> 
> Right.
> 
> Based on offline information, X1E80100 doesn't support reading back those
> threshold values in battery management firmware, so I can only use the
> cached values for sysfs read.

Which limits usablity of the attribute, it is now impossible to identify
whether it is enabled or disabled. Is there a chance of fixing that for
the X1E80100 platform?

> 
> > 
> > Anyway, this is just a small nitpick, this does not really affect the
> > functionality, and I would support merging this series regardless of
> > whether the read back values are always correct.
> > 
> > György

-- 
With best wishes
Dmitry


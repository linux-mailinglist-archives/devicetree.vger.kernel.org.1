Return-Path: <devicetree+bounces-159692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0F4A6BC94
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 15:09:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F7C44670EC
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 14:07:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42E8784D13;
	Fri, 21 Mar 2025 14:07:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z//dnnHj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0DC580C02
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 14:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742566064; cv=none; b=avnGz0x2R6B5/41vdMwkNFpNT+yHh3ziMhsAg0qVpcx0U/L3F33qr2xoqeszT0NYYRI/bd5z8s245NtcQLUkghhqX56ZLgoYCyeFasevuiOlR+5GPqGOF9atDC8LGFO8fvvcsLC/k+u6lFHsjfwJ2Q56uCIi7IfVW/+NhNeq0oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742566064; c=relaxed/simple;
	bh=VQ6uT463iY5nWfGzJJw8UhAvf7TtU5jaMLmXMDvVQvY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sMMb98MkddBBU1RABd6ap9g5oR1e/ha0id1gVMOf7O/YIvaG8tkDq/2lTt/jFVbDp9wKoUB9MBDU5V91ry6PT/9jB4lAhtbbPUgV3+K3QvtKHn6eSaBp5m1zV8m8E2X7IqF6mnLPItTLdFl3UwH+lRikrlIjvlmTnQGJt5/KqZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z//dnnHj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52LCSnAV010735
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 14:07:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6Lj3Z0nr75RSpAKjWGnP9fZL
	3PNA1cnRFr4d9rHGNsk=; b=Z//dnnHjV1USlmiQGf37yOyUhg4DIQvaFXtWQLtN
	cE4i/0Pb+XDOU34kh0XgAUjpTq0GIJWtaWay1mOMl/ylIa68msrs31se6HztnLPg
	qlcm1TxEMgth9pWvv54Sq4WpVwDB3LN5lS0zgIBpWNxR5JMZf3aB77JGErg4331z
	3Bc+OXn5U75ajxjSiiPcsCamTNbguOU2DVrFuLdNaqMmHljWoFAaF3EOzG2g8z3m
	4nv9AZED2dGPI9Syh6XvOom+HXqERexyuSp4HXtc5ShHx091J1B/LYlsNFgghlnd
	ZeUvRMVhqXpF+7aBnXlvQ82+7o5g3ztbC0C7H/UPinNENw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45h85e08ma-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 14:07:41 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5b8d121f3so247707285a.2
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 07:07:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742566060; x=1743170860;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Lj3Z0nr75RSpAKjWGnP9fZL3PNA1cnRFr4d9rHGNsk=;
        b=t3QZfncBKqLtg2ftT9ToThPmF63pgApuheB9i+Xj+gzAaKqVfuQiBAdd7874JC+gS2
         mMlI8sLrPwmzh145otF9wz3wT7+H/BAYlkFQXNS9YGf2pbmh1tE8NHOMlSUR7RJepF5L
         AvFYb5iyche15Ol7MZLJ+5gyPBRfVvF0daVWQtpdley8Wb5L6BNf+oTzSu5NXK+ZFUKc
         D0tGogfAZrZ+ixRYii0H8CLN3jKeIXbQQMMFgXhteaf6VQmwROhFyxauGwddTRcjNkOo
         OGLzLWLj+T1L2UHgEsDXeXwAFz+5i54NzQeJ25jfOSlFcxM3Jt17sxE2TCK3YUfmnhZZ
         QkCw==
X-Forwarded-Encrypted: i=1; AJvYcCV8EFWlg04GMHwIPMVUniL9WTnl+Jo1/cY/r6ZUhAy5g0mdBgA7aWxGZ512irSFbyylXeVPVe/gdvqn@vger.kernel.org
X-Gm-Message-State: AOJu0YypTfuZ/emI3pvGz3p9TEuHicoHDsXQ42E/8Lur0iwEnrV+0RW2
	WRxA+ztJB7URDt51n+QCXGD65IZR2kEFym2Erax9xekEuL4bkvm3l6CnEQIicITd4+tIEAuCQ95
	uM6SM1u/zo8H2r24nvhaF25X7Klqy0j84/lOtvJTNlvVmlSex1/GY5lLMnlc8vkZbD/SsDzI=
X-Gm-Gg: ASbGncszrtXyLPHmJjFG5Y43MeHdCmusSL6ZdmZzIKifQxgcsFF4nD2th6KsBP77kvN
	hrZqfUvCdLeWf/c/6S5SXwQ/YOdXZTDwViu+Lowm9OO4TKMiZiGveLWlWgZ4oH8bO4pzWFVPx0e
	692atQOutouXCIs+JOud+6CbTE0wnX3rJiOHkcpe4JX7fpHUvtPVGDRWGsHnW+zNxkzScgd+/BP
	yqzYe8G+9ypp7K9CKrl+rUe6HY5sRQzXqL7tgDiMat9PBsywyjFxDPl4PZcQHO8UdILElwCI5V4
	Cr0srmAODVoVHmsI7T8bBcbNWX+bS08sLdRk6F4iVS7AKAvzYz4wfhMhZjPK2PP1bQEh/bH0Ju9
	ifb4=
X-Received: by 2002:a05:620a:4051:b0:7c5:9a4f:adf0 with SMTP id af79cd13be357-7c5ba1846e8mr427731285a.33.1742566060332;
        Fri, 21 Mar 2025 07:07:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEN2Hi2Iq/wisLHL4FDbRqBoRtFKfhIdoGegXlkIOLj6uMrHc7E55BfjIOutxbvmBBa/wCXtQ==
X-Received: by 2002:a05:620a:4051:b0:7c5:9a4f:adf0 with SMTP id af79cd13be357-7c5ba1846e8mr427724885a.33.1742566059734;
        Fri, 21 Mar 2025 07:07:39 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad647b8dbsm188937e87.61.2025.03.21.07.07.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 07:07:39 -0700 (PDT)
Date: Fri, 21 Mar 2025 16:07:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: Ling Xu <quic_lxu5@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, amahesh@qti.qualcomm.com, arnd@arndb.de,
        gregkh@linuxfoundation.org, quic_kuiw@quicinc.com,
        quic_ekangupt@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 2/3] misc: fastrpc: add support for gpdsp remoteproc
Message-ID: <rjfccsym3sziidac5l4ecxsjy3rdulbf5ewhfksdqp35oxcimi@brvgpgme5wpf>
References: <20250320091446.3647918-1-quic_lxu5@quicinc.com>
 <20250320091446.3647918-3-quic_lxu5@quicinc.com>
 <30bba296-8e6f-41ee-880e-2d5ecc8fe5a4@linaro.org>
 <qhriqbm6fcy5vcclfounaaepxcvnck2lb7k2gcpbtrojqzehua@khv5lwdgbysc>
 <9962c517-5c0e-4d46-ac0c-2a7bab550156@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9962c517-5c0e-4d46-ac0c-2a7bab550156@linaro.org>
X-Proofpoint-GUID: _6lbj1W2Zentxdq6s_jq13FSt_yRr1_J
X-Proofpoint-ORIG-GUID: _6lbj1W2Zentxdq6s_jq13FSt_yRr1_J
X-Authority-Analysis: v=2.4 cv=LKpmQIW9 c=1 sm=1 tr=0 ts=67dd72ad cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=d_F73D8V8anS-nGMN7cA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-21_05,2025-03-20_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 impostorscore=0
 phishscore=0 malwarescore=0 suspectscore=0 mlxscore=0 priorityscore=1501
 spamscore=0 mlxlogscore=909 lowpriorityscore=0 clxscore=1015 bulkscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503210103

On Fri, Mar 21, 2025 at 12:23:15PM +0000, Srinivas Kandagatla wrote:
> 
> 
> On 20/03/2025 18:43, Dmitry Baryshkov wrote:
> > On Thu, Mar 20, 2025 at 05:11:20PM +0000, Srinivas Kandagatla wrote:
> > > 
> > > 
> > > On 20/03/2025 09:14, Ling Xu wrote:
> > > > The fastrpc driver has support for 5 types of remoteprocs. There are
> > > > some products which support GPDSP remoteprocs. Add changes to support
> > > > GPDSP remoteprocs.
> > > > 
> > > > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > > > Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> > > > ---
> > > >    drivers/misc/fastrpc.c | 10 ++++++++--
> > > >    1 file changed, 8 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
> > > > index 7b7a22c91fe4..80aa554b3042 100644
> > > > --- a/drivers/misc/fastrpc.c
> > > > +++ b/drivers/misc/fastrpc.c
> > > > @@ -28,7 +28,9 @@
> > > >    #define SDSP_DOMAIN_ID (2)
> > > >    #define CDSP_DOMAIN_ID (3)
> > > >    #define CDSP1_DOMAIN_ID (4)
> > > > -#define FASTRPC_DEV_MAX		5 /* adsp, mdsp, slpi, cdsp, cdsp1 */
> > > > +#define GDSP0_DOMAIN_ID (5)
> > > > +#define GDSP1_DOMAIN_ID (6)
> > > 
> > > We have already made the driver look silly here, Lets not add domain ids for
> > > each instance, which is not a scalable.
> > > 
> > > Domain ids are strictly for a domain not each instance.
> > 
> > Then CDSP1 should also be gone, correct?
> Its already gone as part of the patch that I shared in this discussion.
> 
> I will send a proper patch to list once Ling/Ekansh has agree with it.

I see. For some reason mobile gmail decided that your patch is a quoted
message and ignored it.

-- 
With best wishes
Dmitry


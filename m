Return-Path: <devicetree+bounces-182446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E074EACC45D
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 12:32:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 09AE91891D89
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 10:33:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C03541A9B39;
	Tue,  3 Jun 2025 10:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NjWVld3O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299AE2C3263
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 10:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748946774; cv=none; b=GthjPZcOyxSjYvcMIqQ7MPNkUN/vcL6SUy0K0KzcL86iUuZvnqqb+HjOcxuq8LSBbcZI3bYgFfr5SAO4omG6ExvIW1LPmHs0lhBCNtnoSD4s+ZisTMEMP0qooCdJVniNr2BILNYQhknud+OzcvOtXJT8wxusLAJHoJm28xgqUP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748946774; c=relaxed/simple;
	bh=XcfM8GPssi50aBBudpznMmTFF+44nQyWZmhAvzNQCCU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OxgKyeu2qSrcEXwlIjoMfXuRxxEgw5yGxlPrLmRxqAof1uZBeteHROUZQlUVCL8qYwW2Vo79xw1SN/6dO+jstyJr5OzzV8DWKI530aUlQHI6Jka8CnwuCe39rgY7he7kF7u74UQfmGylGX1Stdm5eaviu5/bydsHk5xkumRZyDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NjWVld3O; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5539JGfP006326
	for <devicetree@vger.kernel.org>; Tue, 3 Jun 2025 10:32:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hdcvv2i1wfbhcJ2qFHR5aWoW
	+NavP0DH/EC45K6EfKE=; b=NjWVld3OWzjAthsbqqfWU/ADqpHlNH1G1+RV48Rx
	tNvlnZ7pWRwWDtD+1ob2DUeLxg9svE4hYLEEwmV3HDkMyvMw/peQZgmZvNfsRwLu
	rH8HRu8847FWpMy1wE1I+f/cyeAL6TFkPJeLUIK9fa0uTV3Tm5C1kJDtntxXcmf6
	6LegaYdu4quu1cbIKc5G6Yi69+p6JIZGVIiBlcVs/0SyNpSsvSjd1ol1vZuf+npv
	tLjGQrXQDe6iUxmh6+LOca4oXyegB3iZ3A4QBv8QKxrZPINj5qA/qHRy4/uVqMVW
	hM/yWTnu7Tu7OekvM2PkQX2sEkqVwnLgS8YLIkm8YL9Xqg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8st7xc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 10:32:52 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6f2b0a75decso43724916d6.2
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 03:32:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748946771; x=1749551571;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hdcvv2i1wfbhcJ2qFHR5aWoW+NavP0DH/EC45K6EfKE=;
        b=tv9Pp5a8GXsVjp+1uQr8iEVASB18hVXBpvrESYJWpcZduEIGqXj+DhhW+f+UoLFOuU
         5K80ljsNLeXhZHba9sy486Bs9SgaEKnOMtrfFOrcAZ5ZJU0mvTu+i5JLoGndOfk60aga
         7NDunXghzZTyM19WJ5cS7hltXUr2W40n/6Q60gYM/Xa6tieoDGvmg8d2PYyHhbCrpg7H
         KOBPD+JJbk73Rb0WVnH8ESNzZT6bvjm2s1wPuM6Ssq4zUfL03p1x/CwbHoL+63O+PdPE
         QKGH1zBX9hStO+BGjLzxshhuZLamZYfPr88D/Zk6M4HlmU7eMfdbHrMOlbdocszyTWH3
         gCbw==
X-Forwarded-Encrypted: i=1; AJvYcCUrOGN99zGH7ISsiaF7SR4yAN7EPvUHmtYqCPjM9Ku/XdRxklH7k1lSvhwmRfUv5ybuedmGMjk2SdmR@vger.kernel.org
X-Gm-Message-State: AOJu0YxJbZTq+tjXbvhFqlj08ONKKdL1Os2L+7ebDT0U/gf29fo0ELB5
	1OKI3QFNHkLc9+6H/sMWtoDl2EKc3Z7PamdvD4HF07Qjq0MBMFSqzBfwu9PocohSbX2HaXXup93
	W4EYUK95Mqe3DuuD/7MaiAeIn4hDCsTnaCGe3YuzVP+qu3dICyyw7Nuxm6hQz4vnL
X-Gm-Gg: ASbGncuxKB5SQOKEJWfD/LKhD/96KAUFPkjSLqoJAy6lTSBtFKTXN5GD9K6umkbBdl+
	lrKvuWkez5LgDP60MpmO83cYzewM+iHGa0hnc46FlUXKaTHD6vjiiKbVRLpeC8qE9s1s1xMwBsz
	/u1m/Suky4N1ZoQgJbFnzZv85wGBwY/f8F5+8QUIWrg/nHIOq/oywDna5EyN2TMVcUG2nbNEDEd
	BP71FonOB2c5KSIOqPOfXi/ZF2ka9vsYmRHpvvhipK+QCEyrz78YcxaIJNCfcbFoRxWVMEpIvnU
	HeXQpUboHvqNZOAbHXfUdIsgQwhHED6c69VQbnEtjSggo7BvxFa8g4ocnQFft+qIv42AayAQk3E
	=
X-Received: by 2002:a05:6214:29ef:b0:6e8:f470:2b11 with SMTP id 6a1803df08f44-6fad196e2d8mr276596396d6.23.1748946770869;
        Tue, 03 Jun 2025 03:32:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGAOYthyogdcBLfUS88Ob3qijwtTZm+x+4i/WF3m8OdP7uim81UAXkXpIRzWw+nLEsjnjmARA==
X-Received: by 2002:a05:6214:29ef:b0:6e8:f470:2b11 with SMTP id 6a1803df08f44-6fad196e2d8mr276595736d6.23.1748946770306;
        Tue, 03 Jun 2025 03:32:50 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553378a02bbsm1871023e87.84.2025.06.03.03.32.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 03:32:49 -0700 (PDT)
Date: Tue, 3 Jun 2025 13:32:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 5/6] phy: qcom: qmp-combo: register a typec mux to
 change the QMPPHY_MODE
Message-ID: <2zk4ef3ezdfwpyhepnzpf37xxbci32l4sovsyfiymcucga22yz@zs7darysskd2>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <20250527-topic-4ln_dp_respin-v3-5-f9a0763ec289@oss.qualcomm.com>
 <itmvwhcf37bmnpadcyc7kdt7wx3eljyjwyv64s24zwhbr2e45g@76uzcpjqzx22>
 <7f464eb7-469c-4350-a43a-3b99394ad689@oss.qualcomm.com>
 <7icpna4l7z63gs52oa5lqf35puib66wxxmqqul6ezdkhuziaqi@mvkf73zz2iyj>
 <ac476285-9ba0-48ba-87d5-416bed395948@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ac476285-9ba0-48ba-87d5-416bed395948@linaro.org>
X-Proofpoint-ORIG-GUID: T6WfDVlQ-_X0VzhYB46ZkUCOE1dosFbm
X-Authority-Analysis: v=2.4 cv=EPcG00ZC c=1 sm=1 tr=0 ts=683ecf54 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=eY5ZQVo8cdIDur6ws_sA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: T6WfDVlQ-_X0VzhYB46ZkUCOE1dosFbm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAzMDA5MiBTYWx0ZWRfX4RjyIzizGcXk
 NGF1Znbpp5P8qiq+TApHm4Fh9PccMULYawGV7yJtOq8K8F//Movk7GlEb+q7oXngQXUq0+RbI1/
 NIKWagZJi91zvRfWHudG92SJUn/zYARLcUSvmTC/cIAecJzJyB5HgN4JoVoTMVKDLjikKH2SL19
 2KrHIyu/hVDpSn0z/wlGt7aM17fKyWxf27lAzMrlXCGC7GA/hzS8U1ToiZaNvjWT/fZT1sOtNGx
 Xalr8MNURR2Q42cjcroc4cDOo3LmTXg7IKmCT1RmfBk6DzQub/0PFh3XNULJe6O1e5Qhqf+URP/
 ILZb5JE4zstu2fiOAqeLJ4BcscbpYiQYdMKtLE0DgL7uANtYjABmuN3tyczG6PeaqNKY5eo+qUx
 HYXsB0A+OFncpB9ucKH3Yro83KGA584+THQ0KJMtKPHOMxE9xP1uxFXsgxn27WgegtST493u
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-03_01,2025-06-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0 mlxscore=0
 clxscore=1015 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506030092

On Mon, Jun 02, 2025 at 10:51:42AM +0200, Neil Armstrong wrote:
> On 28/05/2025 10:58, Dmitry Baryshkov wrote:
> > On Wed, May 28, 2025 at 12:22:01AM +0200, Konrad Dybcio wrote:
> > > On 5/27/25 11:55 PM, Dmitry Baryshkov wrote:
> > > > On Tue, May 27, 2025 at 10:40:07PM +0200, Konrad Dybcio wrote:
> > > > > From: Neil Armstrong <neil.armstrong@linaro.org>
> > > > > 
> > > > > Register a typec mux in order to change the PHY mode on the Type-C
> > > > > mux events depending on the mode and the svid when in Altmode setup.
> > > > > 
> > > > > The DisplayPort phy should be left enabled if is still powered on
> > > > > by the DRM DisplayPort controller, so bail out until the DisplayPort
> > > > > PHY is not powered off.
> > > > > 
> > > > > The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> > > > > will be set in between of USB-Only, Combo and DisplayPort Only so
> > > > > this will leave enough time to the DRM DisplayPort controller to
> > > > > turn of the DisplayPort PHY.
> > > > > 
> > > > > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > > > [konrad: renaming, rewording, bug fixes]
> > > > > Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > > > > ---
> > > 
> > > [...]
> > > 
> > > > > +	} else {
> > > > > +		/* Fall back to USB3+DP mode if we're not sure it's strictly USB3-only */
> > > > 
> > > > Why? if the SID is not DP, then there can't be a DP stream.
> > > > 
> > > > > +		if (state->mode == TYPEC_MODE_USB3 || state->mode == TYPEC_STATE_USB)
> > > > > +			new_mode = QMPPHY_MODE_USB3_ONLY;
> > > > > +		else
> > > > > +			new_mode = QMPPHY_MODE_USB3DP;
> > > 
> > > To be honest I don't really know.. Neil chose to do that, but I don't
> > > think there's a strict requirement.. Should we default to 4ln-USB3?
> > 
> > Yes, QMPPHY_MODE_USB3_ONLY. Nit: there is no 4ln-USB3 (it is a special
> > mode). We handle 2ln-USB3 only.
> > 
> > > 
> > > [...]
> > > 
> > > > Consider the following scenario: connect DP dongle, use modetest to
> > > > setup DP stream, disconnect dongle, connect USB3 device. What would be
> > > > the actual state of the PHY? Modetest is still running, so DP stream is
> > > > not going to be shut down from the driver.
> > > > 
> > > > I think we might need a generic notifier from the PHY to the user,
> > > > telling that the PHY is going away (or just that the PHY is changing the
> > > > state). Then it would be usable by both the DP and USB drivers to let
> > > > them know that they should toggle the state.
> > > 
> > > 
> > > If modetest won't stop running even though there was a DP unplug
> > > (and therefore presumably a destruction of the display), I don't
> > > think things are designed very well
> > 
> > They are, but differently. Display settings are always controlled by
> > DRM clients (typically, a userspace compositor). They can decide to
> > send data to unconnected display, they can decide to ignore HPD events,
> > etc. Even if userspace responds to the event, there always will be some
> > delay. I choose modetest, because it's a particularly good example of a
> > delay going to the infinity.
> > 
> 
> DP link state is handled separately from the DRM state, if you look at the
> MSM/DP, you get the following calls on an hdp event:
> dp_bridge_hpd_notify
> hpd_event_thread

And this part will hopefully go away soon... Which means that DP link
will stay on until atomic_disable().

> dp_hpd_unplug_handle
> dp_ctrl_off_link
> phy_power_off
> dp_display_host_phy_exit
> phy_exit
> 
> independently of any DRM state change, DRM will be notified at the end of
> a disconnect with dp_display_notify_disconnect().
> 
> So even with a modeset running, phy will disabled following an UCSI disconnect
> event.
> 
> Neil

-- 
With best wishes
Dmitry


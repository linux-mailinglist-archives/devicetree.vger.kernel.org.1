Return-Path: <devicetree+bounces-262329-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMpUCjEjgmnPPgMAu9opvQ
	(envelope-from <devicetree+bounces-262329-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 17:32:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CB5DC01F
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 17:32:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 34A3A316ED17
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 16:20:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 108743D1CB8;
	Tue,  3 Feb 2026 16:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l0xm6nR2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="H1i7Bd5k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86CD63D1CB0
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 16:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770135616; cv=none; b=pzh2l9PasjJb8U+NkldgspKjyKljVQzzCMSKNlDLWflTNVQfnFgkPaTaJ5MaiG/F7N/lDdxJMvkpXn5AsfkhZ88+hS7dGADcz8/e1rxUeu35XR25ZXN/rkK4LGy9V9gi00gHU+8cOGF9YKxcvOI+vdJKmPeUIIw3nywdn0H6jbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770135616; c=relaxed/simple;
	bh=pkY7kEHabn6xUVVhbcI/kRXeiFgPK7iYlXE34d69vXM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OLUtBkBY4Hq4ediGM51JCSaFJTAppKMi+6iSD9/cPnTYa183/zoouyLVejcCsbcw+HTnqf8rZLfFfqj7XrNWpwEIjXZBB/li3c9SPVrVVUsrtcXV2sMSQap6GiDK0YHCC2gm/iEymBFQc+oSubMRbCnNArfpbFK/7bLQrdyT8eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l0xm6nR2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=H1i7Bd5k; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613BMAuY2847926
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 16:20:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MhZYp8ry51oqanqLXhZjUYAA
	KFbxXcvV20gtwBm4V/s=; b=l0xm6nR2spQZULUrCJEgZ/uqSYsXeKNCn0oWuj71
	r0mEZuyIUxCjxtxde/4Q/FLIUhY8460+l7LMTAWf/cN0X41k/bI8Kg9aqJKfPxfm
	cf0F3qectnIyUt7pI4DR/gJIN28to9hyjwlUP7kTXFNj9n5qtG1BwKx89NyAVjNR
	eboEKv78eCkws/ELDvMZFPovPrjDNdDlqYIDCRux7BFh1vo7tT6xmj8fwPdXYVyA
	H9Od2VQ5cRQei3L3YlILa8a0qQHw2YcNDy06rwPdn9HNB9Kor06LLHcimwXf8mAn
	Zw3fupdJ2ES6nHigmtCElFtwd+7KXu4KAHvBKGe7btMhrQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3g33gwek-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 16:20:13 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c54e81eeab9so4009674a12.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 08:20:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770135612; x=1770740412; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MhZYp8ry51oqanqLXhZjUYAAKFbxXcvV20gtwBm4V/s=;
        b=H1i7Bd5kTGuX1k8R7bicC9+oBHphA/s7RtGYUdcesj/Os8N0OchBqVXUWo53/Gntq7
         drXLpnI+CurRV4WdGS/HDUWvL14S5f44Iblwtx3lwcXXtYRkOQW5RkPqQFWQ0B6ANhKn
         Wnkjxau9UWJGSbdq6SeDUvJ0YGy8xezz6Q30WzrEG9i02ujSqf/oQy0q5uVbeuXx+Djn
         Wl+nFG4qrF51e6qEJnt4aux3eKIDOYpmhV/gkwqK6YDCVc24U7wYD8f1EOihy7oVOxeY
         e/+Oy2jS54Gd2Y2tv4lFqiWzKDAadjddYo/NH0akxEAVzM6kdLV+dudz19LhGeDG+9mC
         1g9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770135612; x=1770740412;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MhZYp8ry51oqanqLXhZjUYAAKFbxXcvV20gtwBm4V/s=;
        b=NFJDsgoMaW4rOOsbCOYTd0Y1/HxIbnXOsJnYwthuxflzW1x72Wo9dAqloEuVwfALEz
         rojukLgtmySl/VC/VErh3/D2mCIOUxGqsT2tcygBDMshLnBqJFVg980p2JCW8x2Ut285
         9yfCMNyXBhUpkLWgamT8KlE5WIzg3vrGcnujDjlhcny1R1TwMDH+sL96YtUKN5zI8rV0
         Kjp1ki3xVNZH49BDcJJXViJLCgUb7aHSokN4+JpU3mi1NhPUAfPLboLG4bqyf+hwZm6C
         0RgKiCidLMN3W7nl81NBQRW60pelONzCLf1Uvfz4SBf/o/3zCnx7fo/epQhSlI97mMJU
         9a4Q==
X-Forwarded-Encrypted: i=1; AJvYcCWTrSYLqka7Lx9zJw0IAfpHMIIF6gic/i5P9kjsFz4aeKGRo0o6n87Zz2QqWYM7HoeO4EhO/t7qh+5E@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+fYdhJJCfaijABRrj4cMIVQl3bHvWgx9dYecmFQum242UTa0z
	HngqOdAT1yGeoElac4q01pXlswUxoyq5lCzLPGiOfX8pRGu8pjX/00WvDqViyJu3TN+BhtfvC7g
	ca+4OJ5mGNa9LMuYIC0NjHukxE2DndMWJOW0ecLPkDigRunm7ivtOBVCTFcJ2vCgn
X-Gm-Gg: AZuq6aLa/mZG82zjUcmbIMk4T+a7aBJ22MQs1b/Xgfuht3M7RBSvBt7mKauz0o1m7pt
	dTngYMYwZlwQxvRIh2cVFsr8MmSeVYZj71nmYmJ0t6/CS5lg04/eNOKOgoJSKFiXbmIgfsXfcOT
	XWNqSS99qtOPpGeDQCgryO11zS+8Ralyemvalx4onTbIp259LhbraCJ3gYBCzziq6cmJHkjvnPv
	w1C0+TfvzujX5pnF2KxicTPG6NB6+JcKgZT1/cD6Rasw/a3t6iYiY+VRURIGQemTvrXHKw66jd3
	E9lQeY+bRortbzxmtYoLRiZVzooRGO2zbEOtDzjjuggiEvUn5GSIJfIeh5KO+TG3GWHVlKvCm66
	+lZnr7w+0QsjWkXYV6TQKh10+vTaI/yY2j3aOtVU=
X-Received: by 2002:a17:903:1b07:b0:2a7:9948:45a4 with SMTP id d9443c01a7336-2a8d96bc4e5mr143166655ad.25.1770135612435;
        Tue, 03 Feb 2026 08:20:12 -0800 (PST)
X-Received: by 2002:a17:903:1b07:b0:2a7:9948:45a4 with SMTP id d9443c01a7336-2a8d96bc4e5mr143166355ad.25.1770135611965;
        Tue, 03 Feb 2026 08:20:11 -0800 (PST)
Received: from hu-kamalw-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3548630dfa2sm74858a91.14.2026.02.03.08.20.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 08:20:11 -0800 (PST)
Date: Tue, 3 Feb 2026 21:50:05 +0530
From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Saikiran <bjsaikiran@gmail.com>, lgirdwood@gmail.com,
        andersson@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        krzk+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: regulator: qcom,rpmh: Allow
 regulator-off-on-delay-us
Message-ID: <20260203162005.ui7sl4t5m32jwas6@hu-kamalw-hyd.qualcomm.com>
References: <20260127190211.14312-1-bjsaikiran@gmail.com>
 <20260127190211.14312-2-bjsaikiran@gmail.com>
 <20260129174829.GA1324020-robh@kernel.org>
 <355213ef-106c-4383-88e7-9b40f5b1c1ef@sirena.org.uk>
 <fa760b2f-4b8c-46d5-90b9-2ad9e69ebf04@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fa760b2f-4b8c-46d5-90b9-2ad9e69ebf04@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=afVsXBot c=1 sm=1 tr=0 ts=6982203d cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=ckApwMkLgAkK_VoyvOYA:9 a=CjuIK1q_8ugA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: yESuUvGBo_aZ59hPPJVfYpM1G6ZPmM54
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDEzMCBTYWx0ZWRfX2RfApQoDSLCB
 o51D8BBuYjLu8hZCKRtzWuYIPMuLMbByWNF6oQglw3HzHjLjLGxjOHm32/JLUdi3D/fk8gnBHcr
 hUkQrkbPZFNTQrSVPiNc886F0gbqrf7czPUFjpZ8ePuQs6ytcVWTqiHHM38hTGKRy93cci8sWxK
 a7f+z2/eFnaSQNPQoli335iOYHrYd407xNK85L3f6ff+4cpc58PH2jIaWjw+LhxizL+BMTSyODS
 gYSak3eJH4JtHKjKtq/vPfycg+e++0Y6etITPOOg2yr0yvaKo48PHxv4gXNBJYheMUTfB5DdSrI
 g8rTsEOgsofnL2YF1aXJd/MzhPpL3PywtBln5Wv8bodOOPWRCeLGhw/vSoWnkPutoL2ONv27yPK
 fd+CcPMst5/mDVEr2FFOF1+Ijlhg8r15Cqe/8bRYzxY6NckwM0pZMnqjhqVJ8jWJcneRqf0WZR2
 ZcUCX9wAOT1ikcMv3Sw==
X-Proofpoint-GUID: yESuUvGBo_aZ59hPPJVfYpM1G6ZPmM54
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_05,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 phishscore=0 clxscore=1011 lowpriorityscore=0
 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030130
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,gmail.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-262329-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,hu-kamalw-hyd.qualcomm.com:mid];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kamal.wadhwa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 79CB5DC01F
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 12:05:38PM +0100, Konrad Dybcio wrote:
> On 1/29/26 7:15 PM, Mark Brown wrote:
> > On Thu, Jan 29, 2026 at 11:49:42AM -0600, Rob Herring wrote:
> >> On Wed, Jan 28, 2026 at 12:32:10AM +0530, Saikiran wrote:
> > 
> >>> This property is required for platforms where specific rails (like camera
> >>> LDOs) rely on passive discharge and need a mandatory off-time constraint
> >>> enforced by the regulator core.
> > 
> >> Does enforcing some off time on all your regulators cause some negative 
> >> impact on the ones that don't need it? If turning them back on is 
> >> performance critical maybe don't turn them off in the first place.
> > 
> > You might see something like unexpectedly long delays resuming a runtime
> > suspended device.  Generally I'd say that if the delays needed for
> > something like this are long enough for anyone to notice they're long
> > enough to be disruptive.
> > 
> > Having said that I believe an active discharge feature in the hardware
> > has been identified and is being investigated, that's generally a vastly
> > better solution all round so hopefully this change isn't needed at all.
> 
> +Jishnu, Kamal
> 
> Could you please confirm whether our hw can do that?

Yes, we do have setting to enable a strong pull-down to discharge the caps
in OFF state, but we dont have the option to enable/disable this from the
APPS. However most regulators will have the pull downs are enabled by
default (I'll check and confirm about this specific LDOs internally)

But I'm wondering if this is really a 'slow discharge' issue, because if the
caps discharge slowly.. shouldn't the rails be turning back ON faster
compared to when they are completely discharged (fast discharge case without
bulk caps)?

@Saikiran, Just checking if you did some analysis from HW side for this
issue.. taking plots? or may be removed the bulk caps on the HW and checked
that that issue went away? (or was still their?)

> 
> Konrad


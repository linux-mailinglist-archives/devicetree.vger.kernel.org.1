Return-Path: <devicetree+bounces-234176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A6EC29692
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 21:35:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D0CF3346C07
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 20:35:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47BC32264CC;
	Sun,  2 Nov 2025 20:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XhgEr3rr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GTaUZbHm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC4B199EAD
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 20:34:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762115695; cv=none; b=P0H49myVAZiQIn6ZV+NsOHAUYlaU2hpaadwQ9RY7NzTKeJSvnOR7sGzHpT9onam6IDVHMbtp7Q0/0RXB8amxMTF0mm3WrJt4gHqUCDmb6zK8Vd9zEbSJikNt4ec9parph7qe6VEXFZ33bEqM8f7aS2o5vxgnJ+3lyoqcXcgaSeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762115695; c=relaxed/simple;
	bh=VgeAkwCeejVu8BwItTn14xHraSVbXgTX+41/0xFrTfw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XhgRk8Hk87eHfiShwIo69Vl3WHQKE1HqgCbki9SCG+ua7FoMEcq+RyCk+owOilftu4BBXPSXo8cmKTkrMwr1YF/t2eqEDR9uT+QP/jsRTd5YvUXpphJMQCBm5oe4tC1nMThSQpYFo+E2UijjKngOXgwz+F5QCTCTawBOxYGLxm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XhgEr3rr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GTaUZbHm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A2JhYpA1167347
	for <devicetree@vger.kernel.org>; Sun, 2 Nov 2025 20:34:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=V0zYBSXV1Wbg4ICGuc9vdNuB
	b2yaOaIQEkc4Ki3XvtI=; b=XhgEr3rrjGfOuQ7J0vfAD6Ig5+P65q7kiNW3VD1x
	KF35EfjXmuNk+bdd5Be/km3q4s0LIcnlDoE6oYP9r2pMtZZ4N0JPtLLTdJBUUUne
	TUPZTV6S2gW7v6iUhcvW6ZMVA3IEXbJP0iMqPQWlPu94T8goer/L3K1BZcRatq7c
	RLzG7mQyYcSzELOB6hJtxXBWhD+rxXPI2IOcVSfC9ZzTAk7CWJpdQbZcFcU2cs93
	LlaZm17CYn9hTaZCVa/5pZC0h1CRhqYaaxYWNNgzvCNpPticmfW4YrLN4tQAJdGV
	b5vLpp7S0Wbq59HAj4VNxT2judjMReVlHKiKfLeaqaAqZw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a5977aqbh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 20:34:51 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e89f4a502cso123588241cf.2
        for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 12:34:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762115691; x=1762720491; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=V0zYBSXV1Wbg4ICGuc9vdNuBb2yaOaIQEkc4Ki3XvtI=;
        b=GTaUZbHmLf19lKTo5Skg8iyub8HFhcjk1o7MSzl1SlFy5HXiJFPVJWShqrrcZXX7n3
         R1GcUSehIzJOzwFf4hA1+A0af9UctuIY8b26WpwvQz4y+a1HjjK4URFIyiPDjjnnlfa9
         EHDB7BK/4tXJyhPMCFvig/cYS4vFyVjRXT1URoaYYYTPPmzh3bW+6jDtqti1sQatNGAZ
         BBKaR96FDeVWRm6O92VPSbV/lwDqiXsZc3TRFHiTEUR/bUv8J19jhKRXsWmkeYTz43E5
         zFim0cK8mrv5PC74n3qa5/yYhoGA49D6Xth984e5/HkSGMgDPFvw9LIB5gO7CzaYVdxD
         OCog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762115691; x=1762720491;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V0zYBSXV1Wbg4ICGuc9vdNuBb2yaOaIQEkc4Ki3XvtI=;
        b=teb0a75OVQHmFXAovhHZ/l5aGzOiakLTIUJbtad/BmkFQPLIGLRBpD+KyQdDqAtuDd
         MuSxpT5LbDabIg39xJOSnx52LVRXcOpDE1O46D0ohaRnHuOXtWDSHBW4xTHFSJKZAl+x
         wgGvRxVpz9umhsGiBRMBFXGZZzn6enz0m4th6HKyfZwhvxWXM7EdVnTkAqu0lFLfZfbb
         q9e3ukuniDwVXgtfjY8Ag9D8iJiFIfJ6DeX/Q9r2eO9fdFGq0Rye3tvnGamrup6o2Hbj
         xSheWi61ouLD1/gyTS8XVUYp6REnUceYhjzkjczDrYkt2VzJ4Hwdb7xc9aj2ETx+/s9o
         hx5A==
X-Forwarded-Encrypted: i=1; AJvYcCXVfqs87279DEdN1F+mPrXXtX5NY2vpESIudcnh7Zw5/X20kA88xV64hj1jwHYE5slArr36gQ+4/ZjP@vger.kernel.org
X-Gm-Message-State: AOJu0YzQ3phO0K39irgJm3Qk8ZxQW258nTKH4SomvcbTK8grLwtePwHs
	R5PXSrHUXp6ex/bcKaXCAM3HN2o4hGpYl20as556TNdQsXw3+w2c0cobncnYZjpyHc6a3dLZnax
	86/CMfh0qmoiWwR8VRbPEdV0kK4jEgEMsjpET8bC/uTN0h1xLRY3rvi+m/OusDx9B
X-Gm-Gg: ASbGncvmiRDzUK9hiYWRaEcWfMKqPnZe21SvK1uGU5tM/iJYuZ1DelSRsW416gzxzWj
	pvwTvUFpEEiMtikyNF+Ohr3YhKSPDMYgr6dTyg3ox/AhVRSm5VuWAqThs6yT21KRPb/Fch1qTS6
	fCUM9fKRzTu1sGESTMJbCdySzqD6ULKUlkKPWsxFcxiyrpMThyQ3z0nPbq1Yl4YORk/8x6Nn7QL
	6/9pS/AVxMfGKFuhQrfvkVdNUWJ2qBrv2JGMnuHL4av1NRAhUQQPaxJsVYeRFHBqtLnsRjsmd4O
	0XmlsuEz++SUyJMXVM6weyouHnBcK912R0AoF+nRTEYNfZQYdsEGEyyRgshXElfACpkJ15Zt+On
	YDHwJyJ06UfSitTc2/DaMSK/n3pwCg051/b+Kympk97TczFEIkSbL2U/91rqngtCDZ3GqSLRP8s
	RN94CDC7MfqEKs
X-Received: by 2002:ac8:5f94:0:b0:4e8:b2df:fe1f with SMTP id d75a77b69052e-4ed30df33aemr149576771cf.28.1762115691152;
        Sun, 02 Nov 2025 12:34:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGYpwKRMbJOanwKK0p/tiAo/hMX92pwn4wJIyK+wbQmMbP7tOcp7BMR6Opqokznp0/88XtYqg==
X-Received: by 2002:ac8:5f94:0:b0:4e8:b2df:fe1f with SMTP id d75a77b69052e-4ed30df33aemr149576471cf.28.1762115690706;
        Sun, 02 Nov 2025 12:34:50 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5941f5bc07fsm2295200e87.89.2025.11.02.12.34.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 12:34:49 -0800 (PST)
Date: Sun, 2 Nov 2025 22:34:48 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: maud_spierings@hotmail.com
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 2/6] drm/bridge: simple: add the Parade PS185HDM
 DP-to-HDMI bridge
Message-ID: <76xhcyzdaka3fuocrr7nz3b4gsyqlgeloellp25t4cidy27yqz@hjqyp6k5ap57>
References: <20251101-asus_usbc_dp-v1-0-9fd4eb9935e8@hotmail.com>
 <20251101-asus_usbc_dp-v1-2-9fd4eb9935e8@hotmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251101-asus_usbc_dp-v1-2-9fd4eb9935e8@hotmail.com>
X-Proofpoint-GUID: u6vf0G4Pt9selOh6mEr6Iu7SlOMEMLvw
X-Proofpoint-ORIG-GUID: u6vf0G4Pt9selOh6mEr6Iu7SlOMEMLvw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAyMDE5MCBTYWx0ZWRfX+ACNgeTZeggY
 k1apeCW1Y9nJe5x9D/f4CgDJK7y1+Xt+wvLHYi9plKxkGkCi7Txv9FRJb2qAicFYiVcGWe4iWA7
 8UKgqk//yIHzUcsd7rqmtcV+JXxissGQ2uMdjMAPI5Ag1m1OaYetXJoREhWHGuNkntLTjgifja+
 JLL1+3vxqEq1cGzHeOekyLxyKK8/grnLxNJXJxlZWtnUfnG0XOw/XdDkAhgXMl8yFqNena1T5Ec
 /RY1LtbrNqgbWKlcBqETzLw4i7PRCeRsOTHR+r3yIuu+1nY3BraXV9c0eaB3s19V7XuYxpShqET
 wC6bFTtFN66rloA+fZXiUj+XWl1vJTuVrK6zRgduuL27I+al8ODrUd5HVkblGcPeE49VEnRFcqg
 6R5BFK2NNq0dg7iGQoWI3iH4jNQCTg==
X-Authority-Analysis: v=2.4 cv=WcABqkhX c=1 sm=1 tr=0 ts=6907c06b cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=69EAbJreAAAA:8 a=EUspDBNiAAAA:8 a=DjrArkTPs9SnCZ0heLIA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-02_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511020190

On Sat, Nov 01, 2025 at 01:54:13PM +0100, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maud_spierings@hotmail.com>
> 
> The Parade PS185HDM is a transparent Displayport to HDMI bridge.
> 
> Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
> ---
>  drivers/gpu/drm/bridge/simple-bridge.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


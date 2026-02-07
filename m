Return-Path: <devicetree+bounces-263572-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CuFELwWh2nBTQQAu9opvQ
	(envelope-from <devicetree+bounces-263572-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 11:41:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D57A10593C
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 11:40:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 843C93004CA9
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 10:40:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9142733E34C;
	Sat,  7 Feb 2026 10:40:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GYrtw/AE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IgvoZbWz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1B733E346
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 10:40:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770460855; cv=none; b=J1pZ8TNKL9olbHvsyd9opAHL5klTbXwiHqUvkmkwez+hoUAQd8FgzHRj8GnNgapa6fJcbsk/sREtWNIrKWuTiIOo+YnvtW5nhDaGN/sljxYCS79a6HItrwTtOphTQVinpPDgdgBO/qul8HXPHvbsIV6zLS8Lu+uEuLVjwWPrZks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770460855; c=relaxed/simple;
	bh=Btnq49XorOH3N/Gj+6SbZqBgjJYUN/tq1x4NuTSnaXs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ZvV+q10kJACjW3E6BvLvqUgyorquMflDKPwr1pkK3KEC8KnVsxh0D5NQbvO6AmZbFM/GibRwKC2Pm322ua7/ewGBQKQAmYJ7VWs4SHjecJzRl6HaUh67Oa24To3ywOmAULLJRf9hWFvA04udt0htYpiKvnT1MryCLwMa0LwKYkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GYrtw/AE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IgvoZbWz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6174OhiB1629773
	for <devicetree@vger.kernel.org>; Sat, 7 Feb 2026 10:40:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mCw7wSL4eGHs+p13won9KVzKu1j034CJcclFyyJMlEs=; b=GYrtw/AEZqpHs3Vf
	C0yazVgvvhdM4ledK+f2K1QS3Mzh1vJq+Vgc/CySD6Ja3Zqe1doQUwncaXjxduKk
	NB3Vl7+UlP26dFgfuvUuzzMez9vrNchFzHF4/x3b+YxLrysEvHGI9d/IXvTQ5eKx
	7itDffzklrsDoLFcekTQs+KmMKfj9Or3DSkI9OraBnVL6CwNlx+ERqjzujNI4YGD
	DwtI3f8cwCv6aRJajkXDGMd+kbvQ3V9rLWdbxR2+GhkKmD+ZmP6dcoFhhWAvpdTW
	Ri+9S7eb8yTXI6QwEynS8eZ2BNyZG9NTz9qOqp3jKYwfE1kAh2Wk4Zwwt9iFs/KF
	DzXd8A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5xb50j1h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 10:40:54 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70a62ca32so868170485a.2
        for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 02:40:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770460854; x=1771065654; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mCw7wSL4eGHs+p13won9KVzKu1j034CJcclFyyJMlEs=;
        b=IgvoZbWzeZ7WJah1XPnnrhokbcqPsKIF9YnFXrnp9JqtAfVvczgx5LQGu7kCYvdtM/
         sjfCNbsGQYw3jH4RKP7SmwfrfXJWZ++hH0DL4dtOGmVM2CwPLW4RVf02Eeh9PjX9TKgh
         fdO7HnqvOJMBzpsvkMVMT7NY6btFwgPZPL/ovcCQPQBgQj0u7Z/BBFGKXuj4WpHavaSL
         SECGKiIQ5X+zD4M0FcylsgPyKPlPv5FYB2yMzEdkeYLScM0ETtAuUGwIp5D7tUAI+OQu
         w9ntJIG/Xo4zDeOV5YC60gChxARoXlqvWkLQz7XAV0lLEGAfoCC+esT14W/DID6GhMyT
         Eabw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770460854; x=1771065654;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mCw7wSL4eGHs+p13won9KVzKu1j034CJcclFyyJMlEs=;
        b=TFKDRwZIdQT6vtw5pFn7K6YoEu98zJrjPvJdr9E5MUiymzoUvBUPrg/HmXxXcL5wOb
         HKdVFulfaPjTVdM+lYtsF3+2X6jt463D9rohwAQptK3QSoXGIm/t6nlfqNi1cz13Rxxh
         WINoCmcUzmc8+4LORq9KMooHIz5O4yB7ooR4D9eqJ3sX/4UgCRv5FcIWMQYLeXhOlJOc
         NW9YG8r7sNdCKsioPfeGdUg2KMNWKrNc5xEpVoRZF7Ui8cG6j2OJPe/Vor5sxIxfEdH4
         CSpqBY+7DmyDSHDiu5zqITrNBAsSKf7oJ5Z7hGYPngwZB5VxjkVOykeUw0O/0lQ9YrTz
         Zj8A==
X-Forwarded-Encrypted: i=1; AJvYcCX5Oudz1QbS3RmK6cEugDtLVJizz9zzlO9+ocVAalkDxNgJLSGKCNjnI5xH3FGbcisaIWlGay2LCnGW@vger.kernel.org
X-Gm-Message-State: AOJu0YxSfnj9E5z6FIFjE+ezbmPJNVfMD7Repnl3fmgyX4cBB5XlVe2t
	XUZFZNQtDueWeSRF7ot7wj0c1GvHiGd0+OTenZOUR0BsAN1VZp5PgUlSDBQW0jtk+IjCAijGYqc
	oiKz+0kQ4ZPXzoNO6X7VZeKAThHWBuHM3jzo13jzAVKjAxkGm2CeVPlSgdxIijwax
X-Gm-Gg: AZuq6aK6haRlrqwLbVxLSEO22UqTrszREL+1f1uwzUFOOyk7fKxohyvJ+LXfXOME0LC
	Kzl9RfZ/CyQvANVzoVMY4hOGYpf/31dD/XhiVLwHvNZTURXi78gCeK7DMscuz8DM20vHt8cgGMY
	p9gHSaCB0I5U1dNM+hfNO4AYzHAkWJgBSBGbr7L47aPNDxy2XZENjSkuc16M8GqpG92MFi6grnT
	INv/2BXy9mEe11F0RBnIUc9hBMs3WyM6dlVICj2soYWBW7E2aXoB09pLx3f3xgVHYjtn0mV3NyR
	274yLIAIO2D2/s7aKKgsfSx8uAoun9I0u0Gys32odku8ZzX1Yt6deX3Iq1Id+7Jy6kSCelLCJON
	lfHyRG5LqHYqgz/cNRgBWXPXDMzmJo6+k34moE6fxEfyZCKkMRgCT8P5VB9wYWOXXHn+vUQxXwx
	MF6NQ40H4AW0H4TFLcRyNLesA=
X-Received: by 2002:a05:620a:700d:b0:8be:6733:92ab with SMTP id af79cd13be357-8caec1bf257mr730167685a.0.1770460853722;
        Sat, 07 Feb 2026 02:40:53 -0800 (PST)
X-Received: by 2002:a05:620a:700d:b0:8be:6733:92ab with SMTP id af79cd13be357-8caec1bf257mr730164685a.0.1770460853192;
        Sat, 07 Feb 2026 02:40:53 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44cf6feasm1244990e87.7.2026.02.07.02.40.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 02:40:51 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
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
        Conor Dooley <conor+dt@kernel.org>, Xin Ji <xji@analogixsemi.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
In-Reply-To: <20260121-anx7625-typec-v2-0-d14f31256a17@oss.qualcomm.com>
References: <20260121-anx7625-typec-v2-0-d14f31256a17@oss.qualcomm.com>
Subject: Re: [PATCH v2 0/3] drm: bridge: anx7625: implement Type-C support
Message-Id: <177046084993.2611002.7265880027469077346.b4-ty@oss.qualcomm.com>
Date: Sat, 07 Feb 2026 12:40:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=QMBlhwLL c=1 sm=1 tr=0 ts=698716b6 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=_bsLKE6ODhMN5xNVZ6sA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: SVha0yIc883wQd4ADPo9UZyw1BxVqS96
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA3MDA4NSBTYWx0ZWRfX6cklv1ExJY0v
 n5qIt4q4loauksqHkHddZ+DvLUwHetYAOgXb/e3sGgVuaMP70uLSgE2XwL6pq6aZNWxmGkd9/G7
 iAKqwa1X+vPpb+sBXwRnpcoQlPN7xvZoZ4uqfAo7pyEs9rI95dXfZNqa13K5z+9BGo9BY6g/Vw6
 loUOca0vsuGGWBWxuvKIo6ILTWZdqMcPB2PFfARnoqkgK+rY09xl7WoDEKr1gRy0qWRtq0lELQM
 /BQN+k7ahYewCSClT7BSrBwPOgYHY76/9wl00JkmtB5rAb77R6p+ReUh2zbbd49Ut01ZqWs8Kv/
 sJpM+uL431dsbH1IuW5b17uDxaetNQDMB+1xCng6kaHqR24756Dvin3YsV8ayNzADSYKouqoY5g
 S0pL9p0cKdOTK8z20cs+1x53VhboxHOIwXZtWfSxjAMKEF5xF3D0iq5VmkeeOuo1O0jCyQpLiSj
 OOZR+UB0ce13HghXMZw==
X-Proofpoint-ORIG-GUID: SVha0yIc883wQd4ADPo9UZyw1BxVqS96
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 suspectscore=0 spamscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602070085
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263572-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,analogixsemi.com,linuxfoundation.org,oss.qualcomm.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.987];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4D57A10593C
X-Rspamd-Action: no action

On Wed, 21 Jan 2026 12:15:44 +0200, Dmitry Baryshkov wrote:
> ANX7625 can be used to mux converted video stream with the USB signals
> on a Type-C connector. Provide minimal Type-C support necessary for
> ANX7625 to register the Type-C port device and properly respond to data
> / power role events from the Type-C partner.
> 
> Notes:
> - I'm not 100% happy having Type-C code in the DRM subtree. Should I use
>   AUX device and to move Type-C-related code to drivers/usb/typec?
> 
> [...]

Applied to drm-misc-next, thanks!

[1/3] dt-bindings: drm/bridge: anx7625: describe Type-C connector
      commit: 1d7532444a32b53ff7344dc52019bab5a4b5ed66
[2/3] drm: bridge: anx7625: implement minimal Type-C support
      commit: f81455b2d3327a5685623e7db4050dbbe5513bc3
[3/3] drm: bridge: anx7625: implement message sending
      commit: 8ad0f7d2e6fdfc4462a5b168ec64d73b7e952ab9

Best regards,
-- 
With best wishes
Dmitry




Return-Path: <devicetree+bounces-237209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E20F5C4E340
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 14:41:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 18F0918975ED
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 13:41:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEFA0342508;
	Tue, 11 Nov 2025 13:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kzk210YO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="R9Ka4mfl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B89341650
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 13:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762868409; cv=none; b=h4Nwc3lEWDdk0MQFRR4tyQJZpqh1pmx1zt/uJaryjHi/JoXq9zwfTd1ftySactl9XoksX9rLTK+kgLmroieU8AJJ0XbKQzFsEuT2DDfc9BbMl0DQF/nL2MwQb/8aOZ+kfCmg8GIlTnvXld0i0mdGXg55tTM7nPnRWf+bo5VliNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762868409; c=relaxed/simple;
	bh=s2AjnkkPP2KRJHp+NjW1PV3jCSHP+i1I/AkGCZAB5+o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gSp+Z19fCni0Xc0wSjcP3ENxjTblyt6M0yvgYol9+8EL0e7qldXfQ2eGyJF0F5zTqfUQVHPNI/mWUil6Ywos4djXLjpdQHX9N4XPsnaeGZR7pJVc0yxISQlZlmKW89HdMRIhGIfBRwdEUfg+4loULOsW0nLRdAEAEmmVEjlL9W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kzk210YO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=R9Ka4mfl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ABBGZPG2232076
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 13:40:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=m/9OP2fjJmx3ZLFyrTIOYLQZ
	UJpxWFVVOvLJMaZcRx4=; b=kzk210YOKcVVi9iPIY1l2uifnvu4ZI3+R485EIuL
	bJgyV/L/R7oK6k+Y02rhWa0tdG6EPQ6ePFLUXpmasZ4137y2dLBzqGaFZsxPVshG
	Q4LKtjVSuoRKx0UJNU8mjO3jRZP++LfB7TKMf4vxnnW+7gscLWpiK4oNd2BwPzkm
	LMr3CcOOffrLtco5jz66kDU9lVO/yYjz3SSxYDp+WKHoL115xfkHWotVWcwimMNc
	d3pogRbdiP9N3l910mIqdZF3sb4StNESK+zvBkqOQQnoySGBc668rwl93qg4/fuH
	JdfGbAuhNHd1Mj4+ESoPlT+QYg6UcxcqyzXgxNAHd17p8A==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abkwsb4hg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 13:40:05 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b9d73d57328so3419399a12.1
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 05:40:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762868405; x=1763473205; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=m/9OP2fjJmx3ZLFyrTIOYLQZUJpxWFVVOvLJMaZcRx4=;
        b=R9Ka4mflBkk5GXLckw6TXlyvdgGcwBdI65knQQ9Rz2VrCJ5NeU4XpSTbrkfriSb2dv
         iSZstai/dVP1nt91i1nI9RrSLQY5dyMpwZd38d5NHGsUUVJRoOHTe/gBgNPOEzwy+TkQ
         uECwk8i6hMA/JPpTnBM0mwHprY7+yu5bnHKyEDAakh/Jx4oN3ZBVFT+bYQXAstRtDtlP
         lCirDLHG6BL7rlIp2iraPYwJg2uGeP1cPVDIG91LasPzXIPlwA23ZkwNbANgFJUyFZWx
         1Jz/sJl9ahsygRdWPlLrcTN2mCrh7+op4q19x242vjI6ene2wPSnVb9aMRN3M8ZzLRmA
         HDuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762868405; x=1763473205;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m/9OP2fjJmx3ZLFyrTIOYLQZUJpxWFVVOvLJMaZcRx4=;
        b=EvWB2ZstMfkLIf54gAncA8sBC6pe4MKsLlVX2cFaVjbe74oqUVLfxwGu/fpVaXLXeI
         LVcV7ShQUemFNJG+bnoyMSFx0EJD5fpEF9hW/Aa9U/jZngk4JPin/K/xI+dKYOX0NfdQ
         Pe+SX2FMdHI6AY/SbAB1UWiR/SRqYhsmsNtYUQnftAOVLbEdz0is8d4ZEnpIzw6qR1fI
         flimq+yhWh3dOdcinqL6zGeeScVg1576PoPhA6lwBUf6GNgMlSjRcxw9v6WiOYZwSVAg
         80ARY7121LhdpvhXWNdtjuJsFPhB/kepr1WBh1ySvuPf3bL9nCJQKiH+MnkBGIOyxezs
         q0Cw==
X-Forwarded-Encrypted: i=1; AJvYcCVTJZWR7NTIcJgFLkGLetYWWHd7lexHa4bSiceHhRccz0ii5VDw3KmpeZXp/s0jVWPGKj+DX6mFiEeY@vger.kernel.org
X-Gm-Message-State: AOJu0YwXIqG8WT1/Ry+Vf8omMUAXRbNELPnp5kaOZYeQCjjSiR0p4Lt1
	xcPG6XAUVFI/TNJkGBwOrNd2VlFE6vdKExxATRb1Cada0j+xnJrtdjKOcJsFQetOyMatmgrbrwl
	kVr+KFn3bRsRDO3XDwoTnmevBWbPHXULI6iWynYnKvkIa4L+prHjyuQKJ7jQxzOBO8eWTqfOw60
	EFS8GJ1f9YK8CelmXvRfRk5HZKaQeuO5qqyCdAdaY=
X-Gm-Gg: ASbGnct3CvOeo50GxG9M/f3VPYbrV3T8L9XGw9eKMyhfDHvVg744kej0lIC6jyMCxdp
	l0kswpjWAfHPSr1bXCHVEA1tqq+O+J1UIGFXSJ0Qaa0yYKVM6VoytST2UWeHyNwG3Uz4G03BX+M
	SZfI6juAqWzlZQBCgmlc3liZzYnf2hDEQkzYuCVLjGxAUZ717YLIgx
X-Received: by 2002:a17:90b:4a4d:b0:341:8ad7:5f7a with SMTP id 98e67ed59e1d1-3436cbf8ee9mr14324787a91.18.1762868404466;
        Tue, 11 Nov 2025 05:40:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHwgaH141MDvs6mYUD4Q5X8qYaZSdZRIsl83tR7MOsbdijrnHMQlgky3eynMPNNlWF7eVvF8AMO1yx39XcY/Yc=
X-Received: by 2002:a17:90b:4a4d:b0:341:8ad7:5f7a with SMTP id
 98e67ed59e1d1-3436cbf8ee9mr14324690a91.18.1762868403713; Tue, 11 Nov 2025
 05:40:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251107-knp_video-v3-0-50c86cbb0eb8@oss.qualcomm.com>
 <3vbq76dpjnadfrnufojq4zqiv7p5p555rhxfx6yoncc354p3lk@ohcs3ldhuoao> <2d56fc4b-6e3c-4f83-aab1-c48db3b8bb2d@oss.qualcomm.com>
In-Reply-To: <2d56fc4b-6e3c-4f83-aab1-c48db3b8bb2d@oss.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 11 Nov 2025 15:39:52 +0200
X-Gm-Features: AWmQ_blXQdwosO6i2_FdIYV6vtohi336OUCTfZYSjCdbYIy9ZUUucC_8UFt7TfE
Message-ID: <CAO9ioeXSXwm03e_j8TuXz2Sqr1J2n3uEFH6dJoKVyE+hJx+woQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/6] media: iris: prepare support for video codecs on
 Qcom vpu4 platform
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        "Bryan O'Donoghue" <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Vishnu Reddy <quic_bvisredd@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDEwOSBTYWx0ZWRfXxvhfUU9dEL+p
 8hQkwQrWBWpH9DPNYTz32Dulw2XSkVfy8hhdqPSQca6aoaUjyXCH/C0Ttpzo/ky5F1csDM6MEhr
 YyyrHcE4lyrRU3yOwr6A0W/3DGlTdsKQb7nz03x4dpb3cu8rZzrYRNfkcVoKU3SCTxThvvYMSTF
 vXRNAVdHStR10kO0hDw3RQlz6KRVFZ3bnmA2r3wcRQod2xVY3w+XfR+rTj1aZELWB2XW4Czd7dR
 MAf2VPIHmplj0gaLFg0PElXFSxCgaUrXDkiuMiTNmLmKdS8sLnFh2kzjt1VH42DhFrjYxmK9Ht1
 1s5UUl6dgq2t3K3UQ75hNf3PS5eivPm0ghOnKEcX85/GCmg/JOcdiQKR0SiyuFi5BDdl8fOfcI4
 d3MLL/+076pqt4UMt201K63ltynFVQ==
X-Authority-Analysis: v=2.4 cv=Vosuwu2n c=1 sm=1 tr=0 ts=69133cb5 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=V0DlmUR_jgQx3hgdKxUA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: 4J_5lSdHlW5F6EbChDWPKJV6uJEAqMzf
X-Proofpoint-ORIG-GUID: 4J_5lSdHlW5F6EbChDWPKJV6uJEAqMzf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_02,2025-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 clxscore=1015 priorityscore=1501
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511110109

On Tue, 11 Nov 2025 at 14:43, Vikash Garodia
<vikash.garodia@oss.qualcomm.com> wrote:
>
>
> On 11/11/2025 4:08 PM, Dmitry Baryshkov wrote:
> > On Fri, Nov 07, 2025 at 03:19:35PM +0530, Vikash Garodia wrote:
> >> Upcoming Qualcomm kaanapali platform have a newer generation of video
> >> IP, iris4 or vpu4. The hardware have evolved mostly w.r.t higher number
> >> of power domains as well as multiple clock sources. It has support for
> >> new codec(apv), when compared to prior generation.
> >>
> >>  From previous version of this series, the kaanapali binding patch(#1/8)
> >> and the compatible patch(#8/8) have been dropped. The discussion for
> >> this is captured here [1].
> >> The series introducs buffer calculation and power sequence for vpu4. It
> >> prepares for vpu4 when kaanapali is enabled after the binding discussion
> >> is concluded.
> >>
> >>
> >> gstreamer test:
> >> Decoders validated with below commands, codec specific:
> > Why not just run the fluster testsuite?
> >
>
> yeah, fluster can also be executed. Individual codec commands were
> explicitly called out incase someone wants to run standalone gst pipeline.

Please switch to fluster (in addition to Gst), ideally running all
test cases for a codec. While enabling SC7280 support I found that
there are enough corner cases which are being ignored by the driver.
One additional bonus is that fluster runs several process in parallel
by default, catching issues caused by several decode threads running
in parallel.

>
> >> gst-launch-1.0 multifilesrc location=<input_file.h264> stop-index=0 !
> >> parsebin ! v4l2h264dec ! video/x-raw ! videoconvert dither=none !
> >> video/x-raw,format=I420 ! filesink location=<output_file.yuv>
> >>
> >> gst-launch-1.0 multifilesrc location=<input_file.hevc> stop-index=0 !
> >> parsebin ! v4l2h265dec ! video/x-raw ! videoconvert dither=none !
> >> video/x-raw,format=I420 ! filesink location=<output_file.yuv>
> >>
> >> gst-launch-1.0 filesrc location=<input_file.webm> stop-index=0 !
> >> parsebin ! vp9dec ! video/x-raw ! videoconvert dither=none !
> >> video/x-raw,format=I420 ! filesink location=<output_file.yuv>
> >>
> >> Encoders validated with below commands:
> >> gst-launch-1.0 -v filesrc location=<input_file.yuv> ! rawvideoparse
> >> format=nv12 width=<width> height=<height> framerate=30/1 ! v4l2h264enc
> >> capture-io-mode=4 output-io-mode=4 ! filesink sync=true
> >> location=<output_file.h264>
> >>
> >> gst-launch-1.0 -v filesrc location=<input_file.yuv> ! rawvideoparse
> >> format=nv12 width=<width> height=<height> framerate=30/1 ! v4l2h265enc
> >> capture-io-mode=4 output-io-mode=4 ! filesink sync=true
> >> location=<output_file.hevc>
>
> Regards,
> Vikash



-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-201876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1C5B1B1A8
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 12:02:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B2E761894DF4
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 10:03:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA37F260575;
	Tue,  5 Aug 2025 10:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aws6MzIz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3927E23817A
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 10:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754388155; cv=none; b=Br1hTjXorLKz+ckoStRtrCrARJB8P+9gyMFaPD7Lf256U3fcweTJ8xArBxocP1okkkLvmehUPw31Ie/9zr2EVcSHAyz+cuJKp6SbmROIV7F3kvmit1USz85kxRS5HW/NyYBiuDGI9fBOk68fTlMmi/zu9+IU1oW3bBvhDG4yC0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754388155; c=relaxed/simple;
	bh=UQfs52X08rztvnVgM1FhOc9rwkKBAgP7cDsq7fD2YqE=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gzIIrlw+++uiDG4Z9nC2L8Pywvmav6RWYWpTeMoJ589k0aiBoIeuMVEPVP0TBt1k8GLHUZj+8Jzjsqn4b77H4fxr0Zir3wZVNv5G+VkNFnyoVcbQdwA+1OOGycNFKgac0P1Py9EmzhwiKvQvP2MVlu3NbZTy3qQFAkHLkfCwKNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aws6MzIz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57580gUH006958
	for <devicetree@vger.kernel.org>; Tue, 5 Aug 2025 10:02:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=r/pN5KRlZzw8ea1w7A8SZKyE
	RmRggaLryPkCmJYXwUw=; b=aws6MzIzuClxtzyT+DV1mLZr8MtAqM43ffErt9jO
	P5+Iq1ORKuAVfbvL6oEr2wCTRHr94eHd6ZetIutgGZfXz6NuVKuuGOzF1lv+xLr5
	DmV6Tso/7PobpC2PVv2uTDaNXVc8iNhckyrNje/pwS7gUr2+daXTePw5skS1Com5
	xily5cnuaJE9zVaAGN+PIg2Vmz+mmaMkluKCwyVq0LfR/6erQlMYwp5JVyH4qx8x
	T65XuLQ4OUpu5EdOBfaJzIDgIIdVALeyf/Aa/0a2no5Wl1pYLOQ/dwLrljlfMxKy
	owXj0TicAY8rQJzehffzgKb/15IYxibEAehUWyWG5sHblg==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 489b2a7wp2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 10:02:33 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-4fde6851ef4so3885551137.3
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 03:02:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754388152; x=1754992952;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r/pN5KRlZzw8ea1w7A8SZKyERmRggaLryPkCmJYXwUw=;
        b=HcH7+j6Yszu8rIZiFwyr9ig6dYYcI9TwBrXRcoEORH9Gi6xRjdAcu55Yrzl2qaYP0d
         /tW+sQOoLsjLXhu/FuB5pc0WF4HpBM2Zha/yyV6Rdmw4dF7idOnn/y/9cF1FJIIgED3J
         34/bq+m6DVNz0TUkQn0Ht45MKnyG6CnRIuAzBDHJs45RMhJvZUx2yob6ppgFCDdX1589
         pkZj4cqFF0u0sPqCz4goP/stfc8oWB+Zo0KLSW6z4x6KRkZgdvVoNIuplNSxmKUUWTXS
         QLgFgmEQY86cc2XFYhXnAlGPXXjXpJg+eVeJYfgBZfi8IFYgZBFlWioHZ86NapZCVFot
         AH6w==
X-Forwarded-Encrypted: i=1; AJvYcCU1nkkuOi0MAgRLG6MiuVlH0GcNLXCarEwB1XsXIXrT6kcOntbuSI+YjrqKsmNAPTjoufeISK2QXaoA@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8QGzVt5RPT4VAdnDGniUkXwHeFFcIJM9Wub1kE3qepCaylFIJ
	U+lny/vlgRv//WNj3MSBRx5LloUZ1u+YEllYe6k8T8kjpJc8iHujO8b9JkEjPzm3ZIneRKkZFWn
	fABiSe2G+a64w5kkH4vnGB8P+oPCeCJwQUGQlaV2/o7ALLNKHDkNpoCzqpWaH2CYs
X-Gm-Gg: ASbGncskLe2cpQakR3XoQv3/DXc4hUkDvcpWtj2mkeOhatm8VhhNXwtrskf/AbiUaqK
	9Lnf3+Cw7T94dn7ITkfwN2tlqYPgDzm7bT3TpquR0UzSl9X0B9tP3jPYf8ew4SJvC4uE7VeGUVe
	AL6f02tosGhfHDt3G7XqvybwkYeO36mb2sJT2TRu6ICX0pEUcEmsgM76KGqZArzwR2kqpzAjf2C
	uXKF1bI075Le+7rus07H/Gm8yw9PR1qR4Y0E4US1WExZmyYq7x1n6p4rdIpkpt0sr4SWaExGTuT
	5Z26Tc1sOGfMbIl0tBHTZuvHFJlmarnJe7jdmVVVZjz3uzZrVXSgud6yU7Mp8NNNtc4bZA==
X-Received: by 2002:a05:6102:a53:b0:4e4:5ed0:19b2 with SMTP id ada2fe7eead31-4fdc2243659mr5411384137.9.1754388152105;
        Tue, 05 Aug 2025 03:02:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGLQKUVXH95EUZeQRDU0eF0Ohtf/ON/jVpxNZP2FzfGcVyv6l60sKTLIkYICkYA8jVIdaoEjA==
X-Received: by 2002:a05:6102:a53:b0:4e4:5ed0:19b2 with SMTP id ada2fe7eead31-4fdc2243659mr5411335137.9.1754388151721;
        Tue, 05 Aug 2025 03:02:31 -0700 (PDT)
Received: from trex (205.red-83-60-94.dynamicip.rima-tde.net. [83.60.94.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c470102sm18416825f8f.53.2025.08.05.03.02.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Aug 2025 03:02:31 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Tue, 5 Aug 2025 12:02:29 +0200
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>,
        quic_dikshita@quicinc.com, quic_vgarodia@quicinc.com,
        konradybcio@kernel.org, krzk+dt@kernel.org, mchehab@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 2/7] media: venus: Define minimum valid firmware
 version
Message-ID: <aJHWtaLung8Ubdh8@trex>
References: <20250805064430.782201-1-jorge.ramirez@oss.qualcomm.com>
 <20250805064430.782201-3-jorge.ramirez@oss.qualcomm.com>
 <a5c292ec-e59b-49f0-9681-a990128cbdfe@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a5c292ec-e59b-49f0-9681-a990128cbdfe@linaro.org>
X-Authority-Analysis: v=2.4 cv=OKwn3TaB c=1 sm=1 tr=0 ts=6891d6b9 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=Rr2dNH5/fcnoRoBmcVUeRg==:17
 a=kj9zAlcOel0A:10 a=2OwXVqhp2XgA:10 a=GmUu7VV6tgk2skhn_1sA:9
 a=CjuIK1q_8ugA:10 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-ORIG-GUID: pX1WUzjYqCk2HwLXkEgqYtIAX8cMmxos
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA1MDA3MiBTYWx0ZWRfX8UhtgHCaWx8O
 PXd1lqappgWJyRjAwncT/b7SLtPmeYnhortyLJa/002jD3miJRKL3nrnrbtvFwdRW8WBvENqatK
 Mz/ESLl48xVJOA3SKKS9eEXIhz3szUmgwBlrYZM3Zmwruv3KvkG7TCv7uylRke+BTZXAGhlKseQ
 TfaRTwNo36LUJ8yNX7RNQxI0dm3lHzg9jv8tGfpnJOffCEPgF6b60/RuEl6KlKo6JY02RTrdroo
 w2zn/6syEYNSNILCpzvijJu9KeepfiOfLhKSM8mNEDSoFWdn40WYUT+NwuGU6SWcdrIT6QTBWGj
 g1U76Lp2pIrIN7tel/RuO+LLt+arQ6pz7cNXefwL3xH6hZ0Jx/Genz01NDAqsZBc9mHnOtcJzr+
 gtZsIEA84JmME3u54c1tJod8X+PFPizF82opbdxez9o+dwkwglA3c7CYYIDOTQ4QRWuwNMnu
X-Proofpoint-GUID: pX1WUzjYqCk2HwLXkEgqYtIAX8cMmxos
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-05_02,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 suspectscore=0 mlxlogscore=928 clxscore=1015
 phishscore=0 impostorscore=0 priorityscore=1501 adultscore=0 mlxscore=0
 malwarescore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2508050072

On 05/08/25 09:29:55, Bryan O'Donoghue wrote:
> On 05/08/2025 07:44, Jorge Ramirez-Ortiz wrote:
> > +	if (!is_fw_rev_or_newer(core, ver->major, ver->minor, ver->rev))
> > +		return -EINVAL;
> > +
> 
> This is the sort of error case that deserves a kernel log.
> 
> dev_err(dev, "Firmware version %d.%d < minimum version %d.%d\n, etc);
> 
> If I were to try booting venus with an old/unsupported I wouldn't know why
> the probe was failing.

ok

> 
> ---
> bod


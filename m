Return-Path: <devicetree+bounces-188318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F494AE37DA
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 10:08:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4D7511649CF
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 08:08:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8BE02036FA;
	Mon, 23 Jun 2025 08:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h5bdbLzJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396DC1FECDF
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 08:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750666074; cv=none; b=dJkO/GLMQHBpb4AhBFoyR36n0trdid0qIqBeBb002Y48exymCSTbllUEHiBccXb6xoTizAKbuAuyeM6FGbDRyMpjBHF5GRvg2zoEBe/Xs39RwJ66o4WDzd82Ri3SfV7UaB04MVMnQVxqhVmLxet5A9FaJhBJJm29H7O8Xa+KtE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750666074; c=relaxed/simple;
	bh=B4CPXnWbR9k+Yd3ZeRCcA6SnEKODoVSpqxSd0CBzTHI=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ktbw5iIcXn9G/ZDeK+whsAC3izERQN5TQLx+hqnZpF4gSk0YtIt2q/jY7r9hHRmZ9zZ/LkXhn6yQwCrYo+JFNB4JmP+o5lE0Vq5bbzMvf1DNQpLPfKqV7JABSFkjzIpAgnrcojie4s6VluJyrJFCUipIsNapwy/fqf7lq+J3Yrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h5bdbLzJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N0P1Re014481
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 08:07:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=oDMFlNkk6v0MChyRljc2vXBp
	h8oq8I0D2cJrN50OSZI=; b=h5bdbLzJPu4QDuQCHnsHoh/lPv24tLxnEWN3lw3o
	4ezIojzvlztW8mHjeopWk7V5mmrauQV89HZTdK66p6HHFPKLsAcgda4OJJASpO6w
	WSSY7amUbWQTXOSBUc7/mmILksnvaRbShCz0psJbfvXGvt3LCjATZFYKDWVVQtLM
	BLbEjruTCBLmfyIj6wzRA/qVOHrbu6uGNZYIx86NIoFrSkj/uCkBCxexROtbuvcm
	1L9FJwrAJFxECu4RBWMYI6+TvtZCEU5+v3+k5wqFPKf1IophVE5M4dnpXjoKbllt
	EkK4zL6mqOMGNxBSuvnumICKLCMsOP/Gupr5DcIFSbY1Zg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47evc5gynj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 08:07:52 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c790dc38b4so642445885a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 01:07:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750666071; x=1751270871;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oDMFlNkk6v0MChyRljc2vXBph8oq8I0D2cJrN50OSZI=;
        b=wLoxZX3lTf3l3F21rNG8HWlURJWzcWpUAzZG+Czd0Q0HXqQG5F2GDQsu2jfIHvpPUj
         J83Rs0qptNnbhNvwFH5N8CBQKe/boyrBf5+I8j5149eTxb9eH/tZATCz9+I0Cr/dk/X6
         v/2RkwwHzJQ7wKfl2LJsDFmT1FF10uVVi88oRxu0Rp3t4xaBuAlz4GQb7Evd9I1+g3b8
         3h3o/oPnvuGgHZyYulHSo47800NmJjlVMcxfqojl90b/uz6uOIQ2K5Ifb6dgV7AVfW0c
         +uQZkhgJ2gwJv+GSKL4Wx8jFueeMPoiTzRMVz7fww4lFvcIGksqRM/5ugTbrBVMFcrr+
         pa0g==
X-Forwarded-Encrypted: i=1; AJvYcCU7UJeoBkNfJyKcKrG0hXzBvGHeIDXqFcmO5cPrUfnyf/15371JAIV0JfYRjdWEvk1+YVJC4pwTpQ8O@vger.kernel.org
X-Gm-Message-State: AOJu0YxhpMLkU8lmEW9BW8eBAbwuDZviZE7TNNiVYY/rO7KO3MgVFQ1k
	RLeTysDcT1jtM7I6Cz+ex7y/ZSkPjeD+Nh/amqmXj+3uJ4qH2bBU+WJ8NZ/rP3hzSmKg45dHIjr
	PrAT5oHomcFgAGWRVjOmmNmwjENj6kS+2vN6QEKiDX8q0UWMfLeQ9RYnC8RRjohYn+XrOG7wP
X-Gm-Gg: ASbGncuBkkM4gaqm9uQFv+Aqu2n7OQTmQ5qQqJ6t1OmHIYbTfFL36dkPeLB8TTqjhLO
	TRFYTOmxS4V8OVflBoEOiHkCNNhXsabZpcN13K+2sAcG1JFvgx7Lbuc0LbcQLdJcYskRAUlEH34
	TeMlZHpni+0bg5byPKN9tW9qSzwXtXm17emRf7P/IiTp2xssHCzeT/2IJ4oCsZ0KUzVL5S8tbln
	fy64xiP0Kjl3lvTMQm2NoNKw5gMSflrJxDruvitBs3G54Ht7a37jTeeOihKLqbH4RipzE23ueVj
	2aNwGRAMoZ2x8243RkyvOnQ96mANBtfxNTkqIrG5BCY+ipzGk6sk+sMPuQ==
X-Received: by 2002:a05:620a:1a91:b0:7d3:a4fa:ee06 with SMTP id af79cd13be357-7d3fc08e0c9mr1465762185a.29.1750666070919;
        Mon, 23 Jun 2025 01:07:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFq//17PLWLmNDldBebAqb7W7yo4ETm2ruyeCSlQOLTbSM3x4JTuSom1Eiu0rZzeYj/JZsz3Q==
X-Received: by 2002:a05:620a:1a91:b0:7d3:a4fa:ee06 with SMTP id af79cd13be357-7d3fc08e0c9mr1465757985a.29.1750666070346;
        Mon, 23 Jun 2025 01:07:50 -0700 (PDT)
Received: from trex (132.red-79-144-190.dynamicip.rima-tde.net. [79.144.190.132])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4535e97abf6sm134859675e9.6.2025.06.23.01.07.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 01:07:49 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Mon, 23 Jun 2025 10:07:48 +0200
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>,
        quic_vgarodia@quicinc.com, quic_dikshita@quicinc.com,
        bryan.odonoghue@linaro.org, mchehab@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/5] media: venus: Add QCM2290 support with AR50_LITE
 core
Message-ID: <aFkLVOkYZMHqEMrh@trex>
References: <20250613140402.3619465-1-jorge.ramirez@oss.qualcomm.com>
 <20250623074940.3445115-1-jorge.ramirez@oss.qualcomm.com>
 <8c8bccd6-9a46-4ebf-aeaf-01f52570c0be@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8c8bccd6-9a46-4ebf-aeaf-01f52570c0be@kernel.org>
X-Proofpoint-GUID: m1ulg5d7KRrCLuCagkx93DLALSG9fKDv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA0NyBTYWx0ZWRfX3TD+ND9zmRhq
 jd5+YArW3WkhunKNHXIEW6naiZbHloOPB1jLX7jjAZl0fvvltPiFpUI0Mb3KrCJGecLhKSloX+i
 YuIxqUQiDUspUpJrCuMn9QMgj98QVN715otr7pxxi2s/91q3ImiOYJfTgnn1/Vj8nDT8DhWd5l6
 6sCf2ePKTXMDsQCNPDUtl45sNEc9bpx+ste9kIoFeH6nHxMGbapKjOsHcxTz3ktaTIzfR1n2q/T
 4+vM/RMZO8GY4E5W0xB1GWzeC/yRGMA7rKE9qjfEuBMWqhRSOkq0tUbL5x9ntyb13S0wm7VLCuP
 rIPzAy7GbaR2ugCl2WjUVwVVBja+A00I4owmZbi68u3anT9d9XdDerVB6RGAxIeitNEhPIA+J9g
 E1mR3k3ot6U9amLMlHnSxurqgFZTbMxa3VvbBXn6mXot7I1AI8KAeaB7fG2JWiAJNemFnU2w
X-Authority-Analysis: v=2.4 cv=caHSrmDM c=1 sm=1 tr=0 ts=68590b58 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=wjE3nLva0YkvARyJ+Gfmxg==:17
 a=kj9zAlcOel0A:10 a=6IFa9wvqVegA:10 a=25ryw9l_FqF9xFXmehgA:9
 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: m1ulg5d7KRrCLuCagkx93DLALSG9fKDv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_02,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=842 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 mlxscore=0 spamscore=0
 malwarescore=0 phishscore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506230047

On 23/06/25 09:55:25, Krzysztof Kozlowski wrote:
> On 23/06/2025 09:49, Jorge Ramirez-Ortiz wrote:
> > Changes since v2:
> > - Removed IS_HFI/IS_VPU macros
> > - checkpatch.pl --strict fixes:
> >   - convert macro to static inline to avoid argument reuse side effect
> > 
> Do not attach (thread) your patchsets to some other threads (unrelated
> or older versions). This buries them deep in the mailbox and might
> interfere with applying entire sets.

ah interesting, I was reading somewhere that sets should be threaded.
sure will stop doing that (found it super annoying as well)

> 
> Best regards,
> Krzysztof


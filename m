Return-Path: <devicetree+bounces-223009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9C7BB050C
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 14:23:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 75623189B5BD
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 12:23:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9C7128BABB;
	Wed,  1 Oct 2025 12:23:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="STCRlEs3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F344270553
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 12:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759321409; cv=none; b=E4jNcay6/GHeRhJovMBOPl0tUz3tikwrfmqoU1+mAaYdSMIXtnXvngR2pNLR7cpXyUQpp/KvXt5hgsGgj2mSA0GvQZUBHoJwDPhC0nHZWAVF69aBartqQN/SqR6zB9Dz5QY4Xvngk6Jv7rwtWtI7+x6KJYEP36NgP9evH4V7CK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759321409; c=relaxed/simple;
	bh=cAzm1k/LFtYsfMoz1fPTwsIertg3SJX77LxBl5CAl0Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Z71Ccur5z7/cEH31UmgS1pj3gIuZjUPWd2abXgBj/dhzTgppbZx0RzcifSD3aKbgF5itdCrLVLmUV4/OPRVblDL7tOokBuYMn/LtGeZD3xxLFHMy0oFDwTiON+OL7NcJHNOzMv/oIYrzvRTiNVz2LpiQQEj6r+GLkFWbXtDNW6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=STCRlEs3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5917Kd19020535
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 12:23:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cAzm1k/LFtYsfMoz1fPTwsIertg3SJX77LxBl5CAl0Q=; b=STCRlEs3uozSjQv3
	G8jluY9INTujJvjmpmz5oUhPEaVCUvBXho4TPh5XFMzW5+NxWIB4YY3uBc4LmQLx
	8R3qK2nYaqeLrc9scFGUJqeY/dc+kpYetzdttljj97vvnVkxASRGtpFLZRIV0WEV
	FLDbrWR3siDlC0J5bavIvgQ1Y3+Ac1tbHY4wymg3nmApbJCSmA9WdYmKBN29DjDY
	QRO617j3bsqaff8SW/NxFe1sG8o07D9iXGzR5Bb65wYGNjlblHRI5g1Ve7CP0Q4X
	sVt1gif7vosCSrK1G82pYqkQVUK9vNJ9/MAcjxDJu7tw45NN+wBZyYNsGdWoZMeT
	4tCzzg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49gyu18une-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 12:23:27 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32eddb7e714so6203830a91.1
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 05:23:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759321407; x=1759926207;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cAzm1k/LFtYsfMoz1fPTwsIertg3SJX77LxBl5CAl0Q=;
        b=mMUnUYeZWhth0A/LVmRHWiMx53vxBBfgLPKOxmBpHV+dpd8jdL1jz25QmsviJHknZO
         3NRwFWIwPf9pSarr2qqeTLBYyl0Tqn8aDxiR4lEYv6Mc9Ip06V4a1Ly+Ta0bKwT+fXpQ
         ds/H6y8HAySy709MA8NdImMuQXOG+Eb7YEcQKYSZHFvO/h4csio+cJf+76kxeLMI3XVG
         FALBi1yHq6V8wHZF80skuB70Ahp5ZO8V1O4KHDoQLKBeC5kEo5eQ71dXp1H34E1+yRav
         c4YLk2ifOT6ADgnBpoc922onoAjd8r0o/YxAVXeXiazTtNRGyyS3/870ZndXoaFeK3Y/
         Udpw==
X-Forwarded-Encrypted: i=1; AJvYcCUFW5Q80f9HHMUP/TqlKFDs66K/lAAYvaoBjdlzN6pVsePGdmWxCLpqunmtl5KBaQUw+GNoSsFqXz1E@vger.kernel.org
X-Gm-Message-State: AOJu0Yxu47A2uT2H+Pa/RTpnAjt/ir2Ob/sG6RQdvhmkc8bNfv1UXbv0
	14FJ+sKy5tTx5WtJRHJM8rjAxZBLu1Kn00QrqxDmQMBWCpdF3dL4eSjSYlzCDUXsAUparQynxBa
	EPkcboZBLXSJj5rTvnRvKtzlw7gaMQSmsCZ8ioP8QB7WgnihFx3seF5t2EScjgH/zFg2XS6KB0P
	f+9T2bbYEAKEooCBzvEi3i/dz9g0OQhn28y9MmraI=
X-Gm-Gg: ASbGnctFBQ1tW1NpY4chvy74Mto1gP65dOvf+ArhuCj7jygVv0iHaS2go1xPlkXuafe
	v8XwxUtv25iB6CNA3ZzBSwxByEPKkvwYITS/Tp8bKJ+Zb8uc4Fs4YGh47lFIoXrpUVKuWaTDOTv
	5pBgltxa4MtgAjJsN4+gZWQmM2/kqqIa+kyt2m8VUNkUGSb8oIQ6wNcsIuC9g=
X-Received: by 2002:a17:90b:38ce:b0:32e:8c14:5d09 with SMTP id 98e67ed59e1d1-339a6e83db9mr3743319a91.7.1759321406527;
        Wed, 01 Oct 2025 05:23:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGgIgEmCWOZbOFHuIFYRCg/Km734jZV+7WJCamZI2sYC7RYyp47h5Plxy1o+W40foeNndZscq3o/Jh91cGo7nc=
X-Received: by 2002:a17:90b:38ce:b0:32e:8c14:5d09 with SMTP id
 98e67ed59e1d1-339a6e83db9mr3743293a91.7.1759321406092; Wed, 01 Oct 2025
 05:23:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-17-24b601bbecc0@oss.qualcomm.com> <CAJKOXPdi0+c_FqinVA0gzoyqG6FVFp0jq5WSLsWWKiT12VVs3Q@mail.gmail.com>
In-Reply-To: <CAJKOXPdi0+c_FqinVA0gzoyqG6FVFp0jq5WSLsWWKiT12VVs3Q@mail.gmail.com>
From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Date: Wed, 1 Oct 2025 17:53:15 +0530
X-Gm-Features: AS18NWB4geW4hLTPYgmoVnPDMvTYBeUM3eY3cJp_CGVJlhX_7-fckOoruJv-GaQ
Message-ID: <CADhhZXaB310hVo_w8_CoJLQ3j9dy1eeTwbmk0q=vUV2ga1PAYA@mail.gmail.com>
Subject: Re: [PATCH 17/24] arm64: dts: qcom: glymur-crd: Avoid RTC probe failure
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Authority-Analysis: v=2.4 cv=RfGdyltv c=1 sm=1 tr=0 ts=68dd1d3f cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=AfoGAnNRudiV65anGGMA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: l785ANiwN_gmtlVlbdUv4wmG96DXFEi4
X-Proofpoint-GUID: l785ANiwN_gmtlVlbdUv4wmG96DXFEi4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDAxMDA1OCBTYWx0ZWRfXySk7FwPgB1Eh
 +dfY8ApQLPmB0Z9jxiTVYivD8cib7vGWbKEXNVrG9YL8SoSQfOJ5ljrQpjk3rPj13/vkQslvHX1
 r50OVcDs7z0GL2Td7LurG7tgCqVLK2B+hDclGSiNDCTTs38thjh0y05/bQSbwLiqU+han9J59aN
 oPChq/9LEdZNwD3KPKraF8c9SwNEVN0nVonBpucAUFk/JxxlflOI2gHAKZQq5EgTDugN4XLcGo/
 ET1aaFb2M3oSLmvRiq2LrmERmCFQK4qvQBoo0nOdOhaTf672UPOpbwFUTLofZ8McYvgJHh/bYVU
 xQqDH3nPKy17F2pQEJt8iIhuTZG6HSEpbx2YdIr+84qyEN8odxbxHoCMJL3FUyGhpcFbwsz8H2q
 3GxJpgCd4dmgJbbiKB8CiCSt7LhpdA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_03,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 suspectscore=0 phishscore=0 bulkscore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510010058

Hi Krzysztof,

On Thu, Sep 25, 2025 at 1:41=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Thu, 25 Sept 2025 at 15:34, Pankaj Patil
> <pankaj.patil@oss.qualcomm.com> wrote:
> >
> > From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> >
> > On Glymur boards, the RTC alarm interrupts are routed to SOCCP
> > subsystems and are not available to APPS. This can cause the
> > RTC probe failure as the RTC IRQ registration will fail in
> > probe.
> >
> > Fix this issue by adding `no-alarm` property in the RTC DT
> > node. This will skip the RTC alarm irq registration and
> > the RTC probe will return success.
>
>
> This is ridiculous. You just added glymur CRD and you claim now that
> it's broken and you need to fix it. So just fix that commit!

I'm afraid, but this is an actual limitation we have for Glymur
(compared to Kaanapali).
The RTC is part of the pmk8850.dtsi that is common between Kaanapali and
Glymur. On Glymur (unlike Kaanapali) the APPS processor does *not* have the=
 RTC
IRQ permission for the RTC peripheral.

So we need this extra change in Glymur explicitly as a workaround to
make RTC register
properly.

But sure, we can squash this into the main DT patch, if you think this
is not a limitation
that needs to be highlighted in a separate patch.

>
> This is a gross misinterpretation of splitting patchset, some twisted
> LWN stats work.

Sorry for this. It was not intentional (definitely not for LWN stats),
mainly this happened
because this is how individual driver owners/teams internally added
their patches. So
this is how they ended up being sent out. But we understand it is an
inconvenience for
reviewers to go over multiple patches and squash it all one patch.

Will take care of this in the next version (and in future).
Again, sorry for the trouble.

>
> NAK

Regards,
Kamal


Return-Path: <devicetree+bounces-225002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 88949BC97F4
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 16:26:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3C7483ABDF0
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 14:26:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 356932EA732;
	Thu,  9 Oct 2025 14:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YR8u+Gs/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A37FC2EA496
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 14:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760020014; cv=none; b=o1LkBdBnK2woNAJTClNl/J6Andzy7SB0yWh5FQMB4XROWYMedSD5LOtlKdKK6g/lKJLCq01MvTC7Dvb4+eZ+ZjxZmVc+qK0rbsqUp+0aHT+dxnw67qOsI0ZBnhgn+kcEX2tlPVD9bEFlAst8jGu9aV7KnMevKniq7iZ69uueNaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760020014; c=relaxed/simple;
	bh=8hvdupc+LZK/iN+CW4zbSmj8G9FzomotMvequinYfSo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R/fSUwatS2h4wKDMj5cFSu+WKwO7mRf3vMZe1ustP7TG7IPelzmm5Svt6R5uhautL6jH/QByZfbEuTGq4FWXT0h0zhVbcvMAm+t9HtDxV/SLgNohV5FBlUgNlJspaHyv7vqFXHl3VFrU6SbF7IrbYrnq1Sx465c6/Y76DEqJvxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YR8u+Gs/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EOmj029750
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 14:26:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=G2KvXnwbuscjouOeX9M2xhbN
	j+kin2y5TQrFozgduvU=; b=YR8u+Gs/wtwLU58ZURivOsxW92bTU+ngTcRJDdn6
	ZT/eU6WoX5YaoxxHNjuTJDjBKUj+rqCxM6EdVLaLxxr4cCP984JzbUP0kiKJrEw9
	9uzHclNOl6GuTNUt+7C/bFvMJH37oEAe1qbuDg7eLOuaKnv6h+kJyhgLmER9g8ja
	5hJNLuV2OSVu8yVHQsxnV0W61H2fLrtR8lD+pFyfJZQQ48r419N7pX+Lm81VY3IV
	wKC2GhXO6ORGFm5eoMYHQg31fOyiNwcpObEW8SfbzIJbV/gH2FcGVlTvMVjnm4Nz
	HxI8mDhBhy+Z2hFnDceypl06uTyHHBRsZ/qZYmdtp2aTuQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4nb5ud-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 14:26:51 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-792f273fd58so27933706d6.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 07:26:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760020010; x=1760624810;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G2KvXnwbuscjouOeX9M2xhbNj+kin2y5TQrFozgduvU=;
        b=I0f+H5zc/Bi2A+z760YnpPw7nUcvBG1N3Ji/zfr0epmP43HmAVzdbrVr5rPdLVNPdn
         n3v/a6VD2zgLIXoUDAr2h74LyAnitBU7TGyuZZ259UGUGNQF95VZwRDJiNPDWgnYViLy
         GhsusSWIi0Q+FYK6iVZ0R3/Dg4F1NkSwPW+aNHxcNKqZ1QQ5IhqCXLs+vAgbGsaSquHj
         60Vbq8NJjrZ0ErT0qz/XpA0mR64QY1rHjfDBxD9fmNaqtZGTejw3+t6v0Eyznv7A4gQV
         JIpszTk1RToOBBF4O6gxxLJ7j9EWosa8hIQ+CsAysKBP+dLB4UnFyFdFRHv3tEwqB18F
         +dWg==
X-Forwarded-Encrypted: i=1; AJvYcCXakn6lKVJHl5+MlMG1c0bLdgU9W1A8hlfEIdYEivbMhHodbtzt0lwLP+Hi1Bk0nqgH2bw9Y5o2kqFT@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8WhZTY5BVck3rwYsXgXugidUdwWj9TBmKo1+hwRpHEbOIJoZR
	H993pCnggr5A2VBXFwZcqTZvgWRkLmWiHE7xH6OxNTPqXac+hQ3jHFNUUnuLYfLrLDTXN1AOHJk
	KY47b5ed7oMcCIisaeFd4GhPSNTbCvP+iY8ocvBgfNXE/5/+EKmuib5POSFOpVxBe
X-Gm-Gg: ASbGncv3kyxlQPKRXmPqgTDIlWuDP2kd/psO6YKFS9lnLhfN5d3uhffcgzHbPUjpGqK
	PITts7UgLa482aQ0N6C7QG7hvxEK7MdC3VgRjMauxKRaKh+ckVnLiepvpqbQrsU3zwAJOULK388
	24OoIjFci4tHtQMpeD9rPVvYQi7eRypHETyTWuZAfaG/R3GSLf9oOaZ4BElzZd9zECvSD4SX2Si
	evCKXCkwRVuU2VirasJ4VSRnKm0GV9TvzL5P9i+2hb8gHuEHuNcmt+dfxEypxAgnxhYMuXi+R+s
	lHND0CBciFyaQyiKz0UeQ2rWLWJmD1Ari1O26jUGkAV+iKS3OwCptPQnm14xJmM4X1ypNYwa95s
	4ugxONdc/0D63hUuO9UK/syAs01jiAr5jSnDGOQeTvB2pJYQVfAxRu+xF5w==
X-Received: by 2002:a05:6214:2aac:b0:783:2157:5a34 with SMTP id 6a1803df08f44-87b2f02ba73mr98393886d6.65.1760020007696;
        Thu, 09 Oct 2025 07:26:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGdTWGuZxMQcCYadLFdJmdthwUCJVxPbcp/MQRks6lOTZwcbWtf0yNa8g4UdjMUG53579SmMg==
X-Received: by 2002:a05:6214:2aac:b0:783:2157:5a34 with SMTP id 6a1803df08f44-87b2f02ba73mr98390956d6.65.1760020003398;
        Thu, 09 Oct 2025 07:26:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-375f3b63f1bsm28387511fa.31.2025.10.09.07.26.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 07:26:42 -0700 (PDT)
Date: Thu, 9 Oct 2025 17:26:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: David Heidelberg <david@ixit.cz>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 1/7] dt-bindings: panel: Add Samsung S6E3FC2X01 DDIC
 with panel
Message-ID: <3mbngf2r3rvbn5fr4vxbk64ouvm3voo5o2r63vg3clyswnceoh@64r6ujb5qr65>
References: <20251008-s6e3fc2x01-v2-0-21eca1d5c289@ixit.cz>
 <20251008-s6e3fc2x01-v2-1-21eca1d5c289@ixit.cz>
 <7askbazrkbny5jlw6cpxcpjyw5nyiozmksoyj5b5momcc7w5hn@r3x6kddatf3u>
 <74893f76-1b7d-4cfb-ba7a-9fd64427762b@oss.qualcomm.com>
 <bmsxmwfdwx7wlmngaqpvz7c2nudcoukspkxgq6zqh2mdlolfxg@fsdbafotp5q2>
 <75011ead-8bd8-4939-ae7b-1c127eba8aa8@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <75011ead-8bd8-4939-ae7b-1c127eba8aa8@ixit.cz>
X-Authority-Analysis: v=2.4 cv=ZJzaWH7b c=1 sm=1 tr=0 ts=68e7c62b cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=df2SJZlNlAcoaDSKSIcA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: dcTMdMvYBJEja_rDBaObdmeOm-iRSdbS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX72TtxBxIiBsp
 pit5LgSbJWjZ4LK29EiWdwrGIeUOX8+cozIvF8L7MBw3Suo2uPnhcq4CiCJ/Fq2khnYkrWtDH6e
 DsibTNV8/a0lUKIrt+t79Qe+CPR/O5sr/1lDlRtBLPysarSZq+v0tMuyoB5tgYevOr/6W/6ZU82
 GJ4OSSlb1ffvJIfznBbxPQrODuYyqKDuRUSctge1zzFQGuqJmEaaNFh/PAcqLRG4WQzF9dcIsXF
 iRoeb+XTYUsLXM/8zvXRNs+kcG8pHS3J0ffwvZnRmWHW8oaMjq3mL2nyAJaJjRVLrNZaRoQit02
 5IFJTlNIYN52TWf/M2sdnwtDPgmQTQ0PXkSfELDFkxpbzXcrH/kq2TTShBLLshzxOPgIOjPqCH3
 292jJJuMAoM3rqBic2hNYEUJaPwVDg==
X-Proofpoint-GUID: dcTMdMvYBJEja_rDBaObdmeOm-iRSdbS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 impostorscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Thu, Oct 09, 2025 at 03:32:22PM +0200, David Heidelberg wrote:
> 
> 
> On 09/10/2025 15:21, Dmitry Baryshkov wrote:
> > On Thu, Oct 09, 2025 at 10:51:31AM +0200, Konrad Dybcio wrote:
> > > On 10/8/25 8:57 PM, Dmitry Baryshkov wrote:
> > > > On Wed, Oct 08, 2025 at 04:05:28PM +0200, David Heidelberg via B4 Relay wrote:
> > > > > From: David Heidelberg <david@ixit.cz>
> > > > > 
> > > > > Basic description for S6E3FC2X01 DDIC with attached panel AMS641RW.
> > > > > 
> > > > > Samsung AMS641RW is 6.41 inch, 1080x2340 pixels, 19.5:9 ratio panel
> > > > > 
> > > > > Signed-off-by: David Heidelberg <david@ixit.cz>
> > > > > ---
> > > > >   .../bindings/display/panel/samsung,s6e3fc2x01.yaml | 78 ++++++++++++++++++++++
> > > > >   MAINTAINERS                                        |  5 ++
> > > > >   2 files changed, 83 insertions(+)
> > > > > 
> > > > 
> > > > Please also describe, why it's not enough to use defined compatible,
> > > > samsung,s6e3fc2x01. Why do we need a separate schema and can't use the
> > > > panel-simple-dsi.yaml
> > > 
> > > panel-simple works for 'dumb' (perhaps a harsh word for 'made with
> > > just the in-spec DCS commands in mind') panels, but Samsungs are
> > > widely known to require a ton of vendor magic
> > 
> > The question is about the _schema_. I think it's fine to have a driver
> > for a panel covered by panel-simple-dsi.yaml.
> 
> see display/panel/samsung,amoled-mipi-dsi.yaml
> the OLED display don't fit well, but I wouldn't mind consolidating at some
> point, but since we know very little (no datasheets), it's hard to do for
> now. Maybe in the future when there will be more panels schemas, we can find
> a way to consolidate into one big?

I'm looking for a simple answer ATM: it doesn't fit
panel-simple-dsi.yaml because it needs foo bar baz, which is not a part
of that schema.

> 
> > 
> > > 
> > > Perhaps the original change was made with an "oh it just works
> > > surely there's no drawbacks possible" attitude, as the panel
> > > was left initialized by the bootloader

-- 
With best wishes
Dmitry


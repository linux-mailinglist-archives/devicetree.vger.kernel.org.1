Return-Path: <devicetree+bounces-234971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F203C3303D
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 22:20:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BFEF7421608
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 21:20:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC53F2EDD75;
	Tue,  4 Nov 2025 21:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ltHTTeem";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Cn79UR0t"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAC52E7BB5
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 21:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762291199; cv=none; b=OAJ60FejTS1eBkl8SXb6QiYPwM1nqu5afHdoXpZEIZToRgBEQLCU8HPx1C/ooMJq6FOIvWAjuduZE6yk4QfC1T8CC0cqWmFgm9zUY1BwvzrQ1bgSOJdOG57t0LYSqaMOnqjEvOPiFOQ75PXCRXJrtIOk4CNGffUJapXBlfiecG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762291199; c=relaxed/simple;
	bh=O1h+4JCwzsGbtVqSYlNfNaUKue0RFvzI1fkR5b3AGJ0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=s0mBRvpkOOetFN7qzV+/XRcxWjrBetOCKCkXgw3QAQzcy6wysrLcAwwy72Tp6p92F8AOagQy6rPbVa4lEZCBgESG3N3Nx92aHFAt/A2qxe8lBDYCfeWAl8F673fqyhY2JeSoHtCNOp3HD6vjI+4Pk+Q50i46SElGpQH9gdcfgXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ltHTTeem; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Cn79UR0t; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A4KgqSY2980083
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 21:19:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7ao1xhpFX+XOQkTW5iWtSuLDLy82w90QS7hnNgJ443Y=; b=ltHTTeem1oFN2AJD
	kR3jNKjD/90nAmVh2kC2q0TP99FT1NPjXnZFKebJO53T6b0xTc7qrS0CZLm6vByY
	3XvSRWo4Z7mdDF7SpOHFQEhNAqhAWSf+BwqPURV1os4TWUf9PuRrtEAeR95yeTh9
	Cvn/mj96ZpjVZ9YFfAi2s1NN5UoqUnL5poPRukS1KqC+3lYbtt+sulPXuEtYPJFw
	gKG0dk/yPk4Y3LFpJw4+0tDC5eo0wrUjMXHqOsgKVSQpdJ9ogKmNkbpmkxm/L34N
	acWki8IVprGTZWbaAt7Ocd/7qnd1swUMoK75uhDxW0vGTu+fASX/3arKd1SgUvdF
	OEtEow==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7hbjsjf2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 21:19:56 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88031bf5a43so56481086d6.2
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 13:19:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762291195; x=1762895995; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7ao1xhpFX+XOQkTW5iWtSuLDLy82w90QS7hnNgJ443Y=;
        b=Cn79UR0tUL4+GIw/V47ndi+mzP3E54Y/p9IBNoVC0tc+SS3GrtaztIxVvRvAkgWQKO
         0fRxStemD1H7L3fFvQfv+ZLAGcGLV7+jgaPwD4wajCx/DLmJcmq0147+L4DqnYLIDOB/
         wMXbWaz0kFviF5UZDiDrSrXXo5zWJuyTosa+jW2SSFYP2jDxsO03yLqfmVgoe0WWysds
         D9xXMBtI7IH6fzogkPdQ9JQqSN3Bz/MmsO0gIyljdzd+FHB5bddJe1FHHaQYX1X9hNnA
         w6pODoaH56OGoGVZhRdvLHFpFKutwE+uchlr7Pxb129vMF3j3YVNvZHDDe0gnlLXotbw
         7sPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762291195; x=1762895995;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7ao1xhpFX+XOQkTW5iWtSuLDLy82w90QS7hnNgJ443Y=;
        b=sPKWsLBqkINIW4tOSkHMdP3WEnKulCTgku7VJdF7OSQmil8Ziy2xJ6TYO4SRFKJOi4
         tEqadkYcozO/hP5ANShmPTV6+Z7QXQcl1GJWZm9Mj6Md6EBQNuUPaMJTn2KUyUIQOkVt
         OdUu//Qs7PMmWAKjdjeuevNtFhvv7/y+PeOjFiWSH1yB/65g+2Y4yklcKebeW5VNbrvc
         319DnZnR9U2Dui/BjoliStRbI5ItF50RXJqVbMseaTauD3rblSpt7nSfaNcXdLOVIn2R
         5c/EQlp2vUgeuKLDQ9tQbdF+gNnoZDOABqfC3i8bviXOLikVtW2b4eXFxm/mEPd4DPdG
         rZnA==
X-Forwarded-Encrypted: i=1; AJvYcCU0mN9cd8J1WGw84TQyPK2dijkDa0IXTt8taCziSv6yu3+M4WVNyC5ASDS2Ru3CiwsSVeK3nmfc/koi@vger.kernel.org
X-Gm-Message-State: AOJu0YxrXEtDhUla0h0PdZlATBi6cbdZnuIgHp6riiQVLik9i8erMPQn
	F/vsX7SyaO6ngIzyUqXIGW+6UK9CwXzsQFMKKTN4O67E0pTceiADEsGixp46Q6VzdhYVYcePmcc
	BmlVuZ4kl1NSbo9AyNJnmEOfKmFh5Zk3vGGzkVIpwv+2bjj4LFhh0OO9bZV+Dj3AW6m6rLpUWgD
	IF+EVH1k95JujfpWINGM4ADD5obZskrgv2gH95BG4=
X-Gm-Gg: ASbGnctTIc5UycpMOMiPmiCsJ9wqivrx7yZizq7R/DMbP3NwKK+mY1BAUrbrLh3bn4F
	8e/a9sBPxQy/UakNd7ZRlZrvRlsK1jzYOCeu+FLEGAG/n3AOGL8xGBF4jI438YdFDYgf1y8fyYs
	caNE+2vJo8rBzJmV8uCp1x0WVtXxYBuMLm9zGI2FQgyusr3N6e6oJKpiZGBRI0LfoLyeMOfpN4F
	+B2rBvsJ+80nkQwoA==
X-Received: by 2002:ad4:5e86:0:b0:880:54eb:f66d with SMTP id 6a1803df08f44-880710ef566mr19875256d6.30.1762291195339;
        Tue, 04 Nov 2025 13:19:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGAtr5fi63eLSJNqRxiTEwYKcD63XOKrJwVcoRoTpEaTOJBhc0VY5rc0qTciRzV6XQYN449ljhx84vZ76s+rbU=
X-Received: by 2002:ad4:5e86:0:b0:880:54eb:f66d with SMTP id
 6a1803df08f44-880710ef566mr19874716d6.30.1762291194661; Tue, 04 Nov 2025
 13:19:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251103182006.1158383-1-loic.poulain@oss.qualcomm.com>
 <20251103182006.1158383-4-loic.poulain@oss.qualcomm.com> <aqoxdaq72prkeqwxmmohlmbpx7icuc32sej7did6vt6rzrgfib@bvmt7ppkvloc>
In-Reply-To: <aqoxdaq72prkeqwxmmohlmbpx7icuc32sej7did6vt6rzrgfib@bvmt7ppkvloc>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Tue, 4 Nov 2025 22:19:43 +0100
X-Gm-Features: AWmQ_bmEwhQu5qGTjy7kyV-oJxAIA4QXEdTlLapG7ZT_EYYjiAQKe5I_bkwPYHA
Message-ID: <CAFEp6-2GGA2gvBKfO0fZemVmJmjQpTQEJ0vLfEewfhHKOYQGSQ@mail.gmail.com>
Subject: Re: [PATCH 3/5] dt-bindings: firmware: qcom,scm: Document reboot mode
To: Bjorn Andersson <andersson@kernel.org>
Cc: konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, sre@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Authority-Analysis: v=2.4 cv=Uv5u9uwB c=1 sm=1 tr=0 ts=690a6dfc cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=--1CKO6TaCenDoQP3NYA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: YQbZe4TB1KlubMxMwBsPWiXRY9LL_v4D
X-Proofpoint-GUID: YQbZe4TB1KlubMxMwBsPWiXRY9LL_v4D
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDE3OSBTYWx0ZWRfXzPFzHqoTdSDO
 G4PPDdnbfJie7bMMzwcGeDFX+mjqKIk0QAjowJJNEjFjQF+x34Bu7AdnaVuMcTg8pA3T5QFDH6x
 13B8bqnE+NthHWNhVeHt8IDEzZaxS1NHP8itBNYyAqHU/CO66pwc9IyHWr97lPM78x95kvHSrfS
 K1s5Lqnm82F1KzXL89xX+CnIUndPqeVygoKt/SCTKlsqgNcIEXxBaWaP27fryks5LSzn4N5sSNW
 1RgpnJQAGFaJpDpTr3SedILTj+TV3QoWS/a4NCkcQ4l3GYUzdNlbiphrr1OVU0QulcMo4WiPGf7
 e8tjOzZrS0BhzydDIUwZVIWVCPivloK2jW7mgDpGaoN4561gDJP4YJ7zuMtuhYL8Q5xtJ5aWBSj
 mseV7qZLjt7BtPG8d73sFGGs5xGVxw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-04_03,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 spamscore=0 clxscore=1015 adultscore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511040179

On Tue, Nov 4, 2025 at 3:12=E2=80=AFAM Bjorn Andersson <andersson@kernel.or=
g> wrote:
>
> On Mon, Nov 03, 2025 at 07:20:04PM +0100, Loic Poulain wrote:
> > SCM can be used to support reboot mode such as Emergency Recovery Mode.
>
> "such as"? Do we have any other useful bits in here?

 I heard we may have different EDL modes supported like USB or SD
based EDL, but I don't know much about the details.

>
> >
> > Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> > ---
> >  Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b=
/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> > index b913192219e4..c8bb7dacd900 100644
> > --- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> > +++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> > @@ -121,6 +121,10 @@ properties:
> >            - description: offset of the download mode control register
> >      description: TCSR hardware block
> >
> > +patternProperties:
> > +  "^mode-.*$":
>
> I'd only ever expect mode-edl =3D <1>. Do we have additional modes that
> warrant the generic nature of this?

We may extend this to mode-ramdump if it makes sense, but as of now
it's indeed only edl, will fix it.

Regards,
Loic


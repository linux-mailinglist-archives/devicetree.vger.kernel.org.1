Return-Path: <devicetree+bounces-212745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B57DB43A29
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 13:31:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CD8667B0AF1
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 11:30:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9B642F4A0E;
	Thu,  4 Sep 2025 11:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WHQKgyeT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389C32D47EA
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 11:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756985501; cv=none; b=Dh6UywaMVrjsh60BRPNfKjY2Fgjx/OYn/YaMKlEcwKrEkOYvGMMRAJ59pyYWtQzBQ7aB/43adpRx/qBIWIrVvdPHnC97cfpr7PIJ7DtbdG5rHXSGrJEQ2SqdRJv6DMeHXGKlXZndjEob4Ns+V+CSxzEaO23ITlBDlAgDflXKipU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756985501; c=relaxed/simple;
	bh=rAALfnxHqaKhs2dQnETIE/DfrBgOvyDsTDw6hkeBqbk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=USJSYJZuPLfM986yiy3s1iPvDV62eusc7q4Tat97mD0ZsG+rKN67pKGZBu7rWSPBSz0mhbxQo7Yn/HAG50zDWMKtsjVgkbsL6lgDtiwXVJxkCqFq0v0wGsMSipOnleo2lfXU08B4V0AvKeFAHZvoGWigRI/K3nUlBWzZeel6RZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WHQKgyeT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849X9UX002378
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 11:31:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2oM+3LmCQmXmSWcFdN4jFgLAQvHu68nnOGl7gbFhODY=; b=WHQKgyeTJA+t0hdF
	Y3HsIk40d6AMq7msZj7vQoxY/OX4XyA6gC26VqCWb3rNsaPIruX6D72AAyZqk/E0
	MZb1/e8MWYzTOoogj+JpZ8dnIE0la5OBW7GDq8hIhfuWQmo9SzbvlHCmCMmldEa7
	hcIKmat8z1/sKrSwL3EEcYsWDfRsL8ozoDCSicNeA2AkRM1jZiTJQ0VWNSa+xKW/
	5MfWP4coxyEUpK2C6NycMVV1u5nW1yzJ5wLYLR55g9LCtTu/pHGX55x2OoQKrnr+
	hZch4Z+KRBwMUxlaIaCgjW5y7tiGC0KyEK4xO5cKmtBbGhamjDbspWTAfyqOoalz
	Gdh/Eg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ush3771t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 11:31:39 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b3387c826eso3534381cf.2
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 04:31:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756985498; x=1757590298;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2oM+3LmCQmXmSWcFdN4jFgLAQvHu68nnOGl7gbFhODY=;
        b=Cf6dXaHJYWFLpN7fuMjmrMTcv/rxSKJKSHaeBypO+/+uKEhIh+E/g+JjDaP1pGNhDO
         wGi+1nGGCpCQo7d8+3PAA1kKjB1pLOqsXRcQFFY9rRY6bIDt+BgWoQJi7FfsNBNLK81C
         t/9dUXwuZ0iQCwQ0tr5/CfCBEopqHPUnEz8Z2M5ycpgs6wWK9rWhew/bwQ6bucXImfxD
         thLtUuRP7qPSzpGCqrEwn1NmpkrUmE4872uJ+d/gj1l6Ah+YK97vqT6kM+6UJNuAquCZ
         VnEveLYQDcv5/SOVJQbzvGZBTxM4O+Jvtybzt3BQoBsbK8cQ0VT+tFB9XRr8h3mZE+Is
         6YXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXCHTHQcKBc/fdMbf+vFG6NnLNpbsUtt2JZmqlKpfXBiFXPFay+gZGNR+t2+ipg4t3WVPWPqu+/X3+8@vger.kernel.org
X-Gm-Message-State: AOJu0YwEL+rIN4mZZU77f6TmjuXBTIonYRmb/wgv/9DRmwOsBGu58LTu
	121smGF72fZrqtUGZn8jYqpDnSATZxiSrpF/niOYwshwMlXBWLmh3GT2pH/ZwDor6hNjlbwT5II
	MyCgqZIAywxOAt5BcnCbENcteqB3Ja+ebjsx1QZsHdoCPP3lImjTyyZSaPpdPp6gZ
X-Gm-Gg: ASbGncvJPsGK+M1BAr6kFnY/iTkguhM9JLNhBv3rHxz2suWR7g77RpCy4TRst8eWyJJ
	UQR9Q8k+aN5hopRiZnyuFlrz1cp7HqVjf8jj6NKSULcAjOWriP7wn3MABAQaYnNlu7DpLWDETs6
	YOD+98FsLDNMq0BsFXgFLhk52LWVgDItZiw2PSh+JK8LsfmANlXpe5jCsGdTNJysph1lg6euqM1
	9x0mQWJJypqZhP46HU0B6eiupJaSXK/FlwUIqQf54i081t9j74WD2MOlrNrXMShiPD7DXt2ZqCY
	chb0RhsGyWLwibV2wPDfWre5tuX6rLY5zUYZTaPN1krgG7l7BVFsUqexuQwvkVD7IHJq90mlUFS
	xuty/gYTV5CP4wKEkGKffsw==
X-Received: by 2002:a05:622a:189d:b0:4b5:d74e:d938 with SMTP id d75a77b69052e-4b5d74edfeemr19082091cf.7.1756985497878;
        Thu, 04 Sep 2025 04:31:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHyimratG0v0rJZ9h4moU0EjyKA3wUxFmTeJvP/OBPnaKd0KPhuJvcfVyUHWIHJApnY48UUQA==
X-Received: by 2002:a05:622a:189d:b0:4b5:d74e:d938 with SMTP id d75a77b69052e-4b5d74edfeemr19081771cf.7.1756985497411;
        Thu, 04 Sep 2025 04:31:37 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b047909f504sm206421066b.22.2025.09.04.04.31.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 04:31:36 -0700 (PDT)
Message-ID: <a547ecce-31c7-4627-ac6f-aeeef81bd0ff@oss.qualcomm.com>
Date: Thu, 4 Sep 2025 13:31:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Add support for Gunyah Watchdog
To: Rob Herring <robh@kernel.org>,
        Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250903-gunyah_watchdog-v1-0-3ae690530e4b@oss.qualcomm.com>
 <20250904001014.GA3405605-robh@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250904001014.GA3405605-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMiBTYWx0ZWRfX60ZhEQCGihJq
 en/1mVsXar/+0RQoqrCCTRBDMfFDRcKoFF12KWLh0TNxAXgCscS0f08lD19zlD1g84kYODom0lU
 6Cvts6wdBl5Al6vfXe6pixnHj/6ryQxInGQQcsDfKWF+uAPk8z0mupjY03S5Gq2mRm+5Ibk/SeM
 8B41bnWNs1Y9N6zhOHtMwR501VihqraUlbpj5FUhyuqvu/GjORVI/HPsHs3X+U44L7U0U++ArzX
 Xds8QKWndgt4mdWhLJz9xz3BbEkLFv5nZ2XFU32y8LG6CFOQjLONWjdryiSyFlpINl3+BMhJpOM
 cjFEYnwoZhIvgGjK3lsGwUDYcI3XzL8tbF38zcLuv9votNJEptWRf/Z9ueDVlpn1oKmITfOLAUM
 ePXI1UfN
X-Proofpoint-ORIG-GUID: v3xp-aO2iylR1XjIyBtK4QI31re68nBW
X-Proofpoint-GUID: v3xp-aO2iylR1XjIyBtK4QI31re68nBW
X-Authority-Analysis: v=2.4 cv=M9NNKzws c=1 sm=1 tr=0 ts=68b9789b cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=dyZUlkJkdh-3oYjz4Q4A:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 suspectscore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300032

On 9/4/25 2:10 AM, Rob Herring wrote:
> On Wed, Sep 03, 2025 at 07:33:58PM +0000, Hrishabh Rajput wrote:
>> Gunyah is a Type-I hypervisor which was introduced in the patch series
>> [1]. It is an open source hypervisor. The source repo is available at
>> [2].
>>
>> The Gunyah Hypervisor doesn't allow its Virtual Machines to directly
>> access the MMIO watchdog. It either provides the fully emulated MMIO
>> based watchdog interface or the SMC-based watchdog interface depending
>> on the hypervisor configuration.
> 
> EFI provides a standard watchdog interface. Why can't you use that?

The use of UEFI at Qualcomm is not exactly what you would expect..

> 
>> The SMC-based watchdog follows ARM's SMC Calling Convention (SMCCC)
>> version 1.1 and uses Vendor Specific Hypervisor Service Calls space.
> 
> Is a watchdog really a hypervisor service? Couldn't a non-virtualized 
> OS want to call a watchdog (in secure mode) as well? But I don't know 
> how the SMCCC call space is divided up...

Gunyah traps SMC calls and acts on a subset of them, passing others
to TZ

>> This patch series adds support for the SMC-based watchdog interface
>> provided by the Gunyah Hypervisor. The driver supports start/stop
>> operations, timeout and pretimeout configuration, pretimeout interrupt
>> handling and system restart via watchdog.
> 
> Shouldn't system restart be handled by PSCI?

I believe the author is trying to say that the watchdog is not
configurable from Linux at present, and if the platform hangs, there
are some indeterminate default settings in place

> 
> Why can't you probe by trying to see if watchdog smc call succeeds to 
> see if there is a watchdog? Then you don't need DT for it.

There apparently isn't a good way to tell from a running system whether
Gunyah is present, unless you make a smc call (which could in theory be
parsed by something else, say a different hypervisor..), but then this
patch only introduces the watchdog interface, without all the cruft that
would actually let us identify the hypervisor, get its version ID and
perform sanity checks..

I would expect that Gunyah has the necessary provisions to inject its
nodes as necessary, at least I recall there was some talk of it in
early revisions of Elliot's aforementioned patches:

https://lore.kernel.org/all/20220811214107.1074343-4-quic_eberman@quicinc.com/

Konrad


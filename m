Return-Path: <devicetree+bounces-190118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9174DAEAAAC
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 01:33:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6C4361C40878
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 23:34:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BECF2264B1;
	Thu, 26 Jun 2025 23:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l1yy9XhS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7187223322
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750980814; cv=none; b=t/6eSluebnEfPgSbqa9TXCSf1xWehEZHSnCZQ7M6fdbnUdSWlpmvOAWOn1mxQllEwIMpYtus0MtWcN5JqLjMKd1TqXwHwC+fTsZ9DeTIcHcePnjHlkPOtazFDeJtC/IpaUzP8v84BMnOxv0MZspd2OQ1UETJzPe4ZO6wgl4L42k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750980814; c=relaxed/simple;
	bh=9DRHyKEn3LgdNudaN2dAIvpVac1tRIy6t8Yc8Bw5peA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XUeXoRBM6o9MWXqcRteJkzhzARhcA8FpJRyCM0JC+8mR0u0y6/sLhGrqMJARdAdm5/rZ3ih8+f/oI/oB5+smaeYY/vtiAtmSFJ3pbXv8Hphk+F7Ts0GvRUFQMCgc5CWWDz3sDav4MjAm/1dyPQmz/LcoVAzvbN8c1lvUeV8ocGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l1yy9XhS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55QIhh6c027655
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:33:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=p2pcURoybL3Y8aXTxu2NYraS
	kKyVcrAYks/QDQsGU1k=; b=l1yy9XhSO/vVbL3e3265u9OwW8VX+jhvZgqiDZ/V
	gpfOu//TDT0C1ZxgewWKyfN/LxW3dbLHU+CVG3syHehitFaqGSCnOGX9xYmyBCuw
	6wOfBeSWoyMH8djKRVtN/ELUHTysoKVDeBl41X14/mC7pztTX4dQC44vjLFe2O5h
	6X452Nt4S6FqEDVvnAnHAZLGlmwr7yqK6RW/fgPaKL3aKvirlfrF0gtRdwcc2SXZ
	lU2ZweOrtb9Fp/YrfWOor1/L4x3fx7hOg6XPTrzl8SykgmwyvY8Gpc+RJVUTDqBx
	KrDppIreTE7tQ/ZtSThVyWcySibZeA6A2195E9+uB6edkw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47evc5x0jt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:33:31 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d0aa9cdecdso121231185a.3
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 16:33:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750980810; x=1751585610;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p2pcURoybL3Y8aXTxu2NYraSkKyVcrAYks/QDQsGU1k=;
        b=qhQ2ZVxbooWwuN6EZZN6Wt2ICT6+7IojcGu8tcizRxale399/5lFUjYowxeBEXsETA
         Noscm4ATD4XFHWTCLkVBcTj/rS+RDMtQd2CIhfMaOm+/x8+zekewy1VHlSyiTPEvffBl
         nMgrngv35zCrCNyy2Yj/tO4PMA1IWHLVWITn0OvwXiP4LG1Xt3vcsR7xixnfZKH4L5IS
         UbxQGVmIy+R0a46Lv3/l8wN/AtwMhGvapDV2JQVEjy9+V3Yrfdq9dSHJS4pPlRpS3vCl
         /Wo0w05lhsC5ZBi62f660StAl0RoZNNG3ivjzgg5to/KGMtQVohmEW6SDA6DhAk2Rx2w
         mT6A==
X-Forwarded-Encrypted: i=1; AJvYcCUUe6oStgaMOyoq/v+eVTQJ9JIWoyzsEpGhESqnmZzkzpbPvAGvYxZ8QATpvoHE31Z6DIsLNN9LESI8@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6NAwBiSYfbGwFwuDlo2UxWyMlTJfEfBFWCvljR880so+QLsiB
	XBnksi3cgdKy4hQUieBXpz69527HYPmXmS1F+KC3r1swPfbNHVZx2KNY8QvbWUP9ONxmGvB1oTt
	AH09ZuxNJ8osthliqrLkP1KBN2/tgpyXmVL7Mk5HtFJMa+5t8Lz/7uPO8Ka+/Qy9Pl1sri8ImqM
	w=
X-Gm-Gg: ASbGncvqhCTr3rexUuGS2tL1zp6sa3HfAumGQiygEyCfLXQTjCHFtrPDPMSX5gUvC5O
	yD9Lh3XJ0TfP2z3kiMGzt7Tb/F6WMSwjLbIR5AyPhTH7eAxy2u9jxioLA+a5VPv20pXUvfMuWBr
	eSiAqkpzCCQil1UbTlmOzdiiBpJ30pg5YkTc8PetyB8onDylIJRIJKwFo2WvnYXJbwlk+GgKeQv
	kOCJmqmhmR0yH8mIC3kzZNtZ3aiwi02eWMzIgRU25gnE45REozHkzFedZ6IRzf/VFuASfSY+2ah
	RcD1tbwEAAtqu1agFjIRkPXKwf24IZpTSnnlTTLcIV834D7MQkMbFKSHTHAkoQqYdHuDMgsE4+P
	XTtJJJg2eQpSvU6NoD4+RIHD1sHMXFfbWAeA=
X-Received: by 2002:a05:620a:27c1:b0:7d4:3bf1:b1f0 with SMTP id af79cd13be357-7d44398e3e1mr233337885a.18.1750980810030;
        Thu, 26 Jun 2025 16:33:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEIbx430OqgmF+GQnggSARqLbLWDAsCCU6kWI1oFpMQKp6uZB7h+OTCcp2g2ALy/bF+tlAVHw==
X-Received: by 2002:a05:620a:27c1:b0:7d4:3bf1:b1f0 with SMTP id af79cd13be357-7d44398e3e1mr233335285a.18.1750980809603;
        Thu, 26 Jun 2025 16:33:29 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5550b2b95acsm195077e87.115.2025.06.26.16.33.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 16:33:28 -0700 (PDT)
Date: Fri, 27 Jun 2025 02:33:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Johan Hovold <johan@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
        Steev Klimaszewski <steev@kali.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-efi@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 6/8] firmware: qcom: scm: add modparam to control
 QSEECOM enablement
Message-ID: <cjinqyqn7qgvdoltoywxa2lq6bjyfrotmon3iv24tqt3bpdlpe@3xb2k42ffegj>
References: <20250625-more-qseecom-v4-0-aacca9306cee@oss.qualcomm.com>
 <20250625-more-qseecom-v4-6-aacca9306cee@oss.qualcomm.com>
 <aF0cyOpkjUI4R3bv@hovoldconsulting.com>
 <gqoba4uu62sh4qxapqkhlufxnliatevnsqcxvijvb74tposf2b@iyonh347aext>
 <aF1EDMsw1KQTlteX@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aF1EDMsw1KQTlteX@hovoldconsulting.com>
X-Proofpoint-GUID: 7qwrhFUoYaf2cuw1hgJVQQCl5s17T4NZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI2MDIwMiBTYWx0ZWRfX8X4bVoBwY30S
 /nsnI/MTqQpCUZVR0SGqcROLyIW1fi8mQYHsSTqBOh5CQeXZGk8L57Z429WmPZ84pnc9HEorNNy
 M9RV2FNpfwW9sRzl9x3bIql7rKQASzdUgCcx/m68JEGiCjT4aLJY4GKj1fSOdXtq4BcYnC7Kl28
 /HJTMvbha30jvJglGYo0ZwtQa8cwb6GWh/HlEg7153LDKR5C51UuBxc23KWlR0ko19287i5F4gm
 urXATEuNmbT87vmAEXUYAaeCGHNYzWWviqffviCrWnp/MnFiS3qTttomnqtqtb2syRZj3pP/ivd
 A7rBYGuXsz+dLnLtSkiRwjAHEOJ0zHFqnaHhbrpUdSKSHrggvFRaSx/G4iPvUzIx/JNWor1yHw0
 dLB13UYeWFPmmPHWmfg85q0ZM6IkltlPKoPZV660IAHlY6kDz2Ft6ABFw+NOrUTdn52Yf580
X-Authority-Analysis: v=2.4 cv=caHSrmDM c=1 sm=1 tr=0 ts=685dd8cb cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=NVsCH3EOgwMYIqYMOGoA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 7qwrhFUoYaf2cuw1hgJVQQCl5s17T4NZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-26_07,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=999 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 mlxscore=0 spamscore=0
 malwarescore=0 phishscore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506260202

On Thu, Jun 26, 2025 at 02:58:52PM +0200, Johan Hovold wrote:
> On Thu, Jun 26, 2025 at 02:08:23PM +0300, Dmitry Baryshkov wrote:
> > On Thu, Jun 26, 2025 at 12:11:20PM +0200, Johan Hovold wrote:
> > > On Wed, Jun 25, 2025 at 01:53:25AM +0300, Dmitry Baryshkov wrote:
> > > > From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > > 
> > > > In preparation to enabling QSEECOM for the platforms rather than
> > > > individual machines provide a mechanism for the user to override default
> > > > selection. Allow users to use qcom_scm.qseecom modparam.
> > > > 
> > > > Setting it to 'force' will enable QSEECOM even if it disabled or not
> > > > handled by the allowlist.
> > > > 
> > > > Setting it to 'off' will forcibly disable the QSEECOM interface,
> > > > allowing incompatible machines to function.
> > > > 
> > > > Setting it to 'roefivars' will enable the QSEECOM interface, making UEFI
> > > > variables read-only.
> > > > 
> > > > All other values mean 'auto', trusting the allowlist in the module.
> > > 
> > > I don't see the need for this. The kernel should just provide sensible
> > > defaults.
> > 
> > It does provide _defaults_. However with the next commit we mass-enable
> > QSEECOM for SoC families, which includes untested WoA devices. If the
> > user observes a misbehaviour of the UEFI vars or any other
> > QSEECOM-related driver on those platforms, it is much easier to let
> > users test and workaround UEFI misbehaviour.
> 
> You basically know by now which machines supports qseecom and which do
> not, right (e.g. UFS storage means non-persistent EFI vars)?
> 
> And it's a pretty bad user experience to have people trying to write
> efivariables when setting up a machine and then spend hours trying to
> debug why they don't persist after a reboot.
> 
> I don't think that's fair to users.

So, is it a user or a developer, trying to port Linux to a new hardware?
Also, R/O implementation makes it obvious, that the variables do not
persist.

> 
> Let whoever brings up a new machine figure this out. It's just one
> entry, no scaling issues, and we get accurate information (unless
> Qualcomm, who sits on the documentation, is willing to provide it
> upfront).

And that's not really scallable. All other parts of a particular device
are described by the DT only (that's especially true on the PMIC GLINK
machines). If we are to support new laptop in e.g. distro kernel, we
need to provide a DT... and a patch for qcom-scm driver. I'd very much
prefer to do it other way around: provide a DT and patch qcom-scm if the
laptop is any way different from other laptops. E.g. we know that all
X1Elite laptops support R/W EFI variables. Except for X1-CRD, which
deserves an entry in the driver.

-- 
With best wishes
Dmitry


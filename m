Return-Path: <devicetree+bounces-265476-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id jKfHKMuUj2nNRgEAu9opvQ
	(envelope-from <devicetree+bounces-265476-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 22:16:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BF39A13991B
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 22:16:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6D810301F9F6
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 21:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C2E028850B;
	Fri, 13 Feb 2026 21:16:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mkO+BSzV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BKa7P2DY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA5EA27FB3E
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 21:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771017416; cv=none; b=fzLEAk/MPLxWBy91vaoT3TtVM1EzEhh+H/eb4ZRtYHAE+z49sLNJJ5NQXcgZzEbd70a3kox71RMYYhOAVuhc8V5B845urMVqctFvj4wPy5+2eebjEVe26j5CiEsyZubD9zGI6uz9Sdn5FuTNihbXsfmMrPjYXbf0v6DnrtEFr4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771017416; c=relaxed/simple;
	bh=OmF3aC6A8T1/0ED5crWZJOtdvQTTRwXxUPlMXgkYrRM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g7bKjG6tLymH7HJW8F6wUmxC3mAi5O17BJr9BZ/BqaQNRhaQ3QqoWTYbolStvFPN5BkKKZFmyM1DOT7YsdW9LXmlgp7f1KbnycYipWXHCdsjBl8iwMOf9HFl9sEqHDOSegItfWhWvrlLlj2FW9y59HFu353cBprmikocfO5QTdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mkO+BSzV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BKa7P2DY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61DHr31M1507058
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 21:16:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=oMvyl59P/aj/87wJj9q6owTg
	vAn7KB99a9MNl6OFhN4=; b=mkO+BSzVn9wZNo0wNBs6WGv737b41fb+K1BYbkpn
	4xcmQD+3bVQlkDuDM1cJTim48603stEDbLXgKAzlI9zpF3b+iQwwVS3lLTck52hh
	v9sW8ApV4R2q5WXkBJDz/IBJ5up+a2lK0NJ+rXfgRDHWXVo/e0c1ceqItNIUxiJA
	uzxTldnDEHnvGnIVxhY5nE/4d/zSsHsoGpK7wCSyHEsT+YJqyL0snU9KzgCL2dkQ
	zsh1VLoHSbkqC5tNTeF2RA8bTgod2FCGtEGh+M5t7ZrF9fl+E8hwqr5yYyDtnWvi
	6gI7qq2iONmsFqtVW3hNnXqfM6QI6nE2UAxbpvbo1KbTPA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ca8rdgn65-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 21:16:53 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-89467edcd21so109203476d6.0
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 13:16:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771017413; x=1771622213; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oMvyl59P/aj/87wJj9q6owTgvAn7KB99a9MNl6OFhN4=;
        b=BKa7P2DY4zTrX4JIK9IWUC80Ue7j/CvODrWCO8XSliyPB8OcH9s12CRhFjFiorDtLq
         0wY61912Cu0ue2MqH0QTmk8j/sVHEvqlIY4SFmqpfwXiSwf4uo4gOwpA5akrXQcIIUfB
         JqQax03wR6XwqO9FfT3ZfQSm8ECrrfQ2KmYJN2f37bEFaPyPTk4OMrdO4sFD7TO5M3/7
         kAJyjaNhPoFM+Z84GRz+lEWgmRgDQkaGV3X27hvHqETmxS9bKtuNNJiedv+lfySWAqQs
         h13pft+aoiomnRs6rFLt+ZDMp/1RyQosMXJF0BAuJJ9ZfBE8vpfhvqZVFguqs+O0rb1e
         92dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771017413; x=1771622213;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oMvyl59P/aj/87wJj9q6owTgvAn7KB99a9MNl6OFhN4=;
        b=C780B4Uxv3iP7D/4ee/7MpC5Iy5EonafN2WA4Ekiz26t8OgiCkV+tZAf0qgeYpzdqG
         4AO1oAtTMnm1hSJspkMbd7jnBpWghqq3NU9JU4So+wioSzwOBne/GAo6LPWYo72+F1ya
         mlHcFtznjV2prdVanQV1Hz2l0AB/T7mP1uDNw/L9LLHKyKSqdxHKbKjnRekZxKl40Mgi
         VDQBGGahUEJd1Qh0Vz2wa5KL6O/R+D1+5oUKx7OVtib3NUoGpG1uMFkEXGFNkwHry2Q7
         OLN82zsWcrNVkVfsNBACeS5V2CcQ+o0T3BCTbQLs4EZ8DUGyJPmhJKgt7QbTP47c0tWF
         MsHQ==
X-Forwarded-Encrypted: i=1; AJvYcCX6pCoTuhbZwKBtgAFelU4vMBMalBCvOjBXd52t2pJKIClVFHGdfgJvAUBXywi03uHYRsLkC9k/kzgd@vger.kernel.org
X-Gm-Message-State: AOJu0YyoVXkroYvP4PaDPb9Awe8hUViuz6ZvDveRG/FzrLGDi/5wviKC
	dyTc1mMtvk8/wkavmFqFZENwCgesjj4ltc5eFi57XElY95FiIdBLC49rZsGOiiKhsz566+hjEX+
	cX8DK9LsxSd0jhPiXRPhAOUAQXqjZKKPVEHWR9+Ss/rk1fxeX3FiGzyly5WuHkyvX
X-Gm-Gg: AZuq6aI3gLUydhUOq3opcxYlSHbqCG7ny/5uLWnp11bHf8HamwFtT/vK09hmJ5PC2is
	l0LNFSF0463Ls2jtEDBJC54/A5USKClCT5o7dZlByxMrjLmxq0eku5xpjMAXbcAGC7gfGmkw3fn
	euJ9/nVcUCmU218USYJpo8wJfwAClvLRgSQRAzpvjmj4FSCNmwXupqjGtLe6cBJm/VsjJDgzDtn
	cj6OehojL7DPlK67W7YuagN3Yda0QGaXJio8yYgHIq8/5UsPToNdJOKpHGlYLXAWoCrPaSvW6yP
	bO2acuE9ISaQiYUednHr2STvHeEECqJviqh3h5WzLlsfh/ICoYTzNngmLIH3vtHeJkxoSBTOvX0
	xa2Zp+YsqtySTQoD5DjICTcC9Y0k0Cf+lNtaAFyHif/jBR0EDBp2kUa/cs5uFdwiknmuvDFMHDD
	DPBvasqr2mfay1dMiGBZvkaB/kPnvL4x4hI0A=
X-Received: by 2002:a05:620a:404c:b0:8c9:f996:8207 with SMTP id af79cd13be357-8cb4bf6a390mr129127285a.7.1771017412786;
        Fri, 13 Feb 2026 13:16:52 -0800 (PST)
X-Received: by 2002:a05:620a:404c:b0:8c9:f996:8207 with SMTP id af79cd13be357-8cb4bf6a390mr129123385a.7.1771017412221;
        Fri, 13 Feb 2026 13:16:52 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f5635d2sm1733432e87.13.2026.02.13.13.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 13:16:51 -0800 (PST)
Date: Fri, 13 Feb 2026 23:16:49 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: milos-fairphone-fp6: Add Hall
 Effect sensor
Message-ID: <l2gsapxxkhpecrjmaifpv456tarkfvyyowvahkj7jcggat7bpq@rlzwqfpbij52>
References: <20260213-fp6-hall-sensor-v2-1-ecd113d4919c@fairphone.com>
 <qb3zeuhh5fjteyjy46e3dbsx7ktqvnuh3snqmcvquajdal6igm@fqwv7436yw3m>
 <DGDWUOV1HSXP.3DU4CCDF81T59@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DGDWUOV1HSXP.3DU4CCDF81T59@fairphone.com>
X-Authority-Analysis: v=2.4 cv=FJgWBuos c=1 sm=1 tr=0 ts=698f94c5 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=6H0WHjuAAAAA:8 a=byvse3m9iWrX3UZvJDEA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDE2MyBTYWx0ZWRfX3ahgZHmjDze6
 aLxGQcANvruRaKX37JIa+3E6jqnQwJnPTI3tSKCdUfaouA+xlR6Z9n8IoBFgtIdekc7OCLaLtBA
 JEjq97geXU0JqixAy1BDHw4DxWcKhef7Qy0QqNA2tJUHbrPfsu7nI/Bxmqh7q784HB98dZnCjk9
 qSWMhKKHxfRUOJjF2VCXI/bZqDmZVv+kJ+fu7eFT4Rj43W2+VK89jGyws5dW0dFWRDu5rHD6x9t
 z60Euu2z6aD4nVvb73Yjy6bAihRYKGQUABEQMwJpiHQul51mJiptE6vfcnMV1Npe3jxjs+VGLGU
 tJaX3djcWpsgg6f0rQpqstwZRkXBMUnYqwqwMbI/ZJBftT5zvoacmJXuVaxfowyo3Ef0n50sOVE
 OaMlNQ2j8ejyr06u2+gx1dVp3luZ3GiT6PCmMk4532MZirZ2G0fzD6nVJUgR0gMKxvqt6nV2NY2
 LRdwSJjKIDRHNp10h/w==
X-Proofpoint-ORIG-GUID: Dzchr5RTeWXrUj3ypPoVdk1HwAmY2O1o
X-Proofpoint-GUID: Dzchr5RTeWXrUj3ypPoVdk1HwAmY2O1o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_04,2026-02-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130163
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265476-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,lists.sr.ht,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,fairphone.com:email,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BF39A13991B
X-Rspamd-Action: no action

On Fri, Feb 13, 2026 at 03:40:44PM +0100, Luca Weiss wrote:
> On Fri Feb 13, 2026 at 3:33 PM CET, Dmitry Baryshkov wrote:
> > On Fri, Feb 13, 2026 at 03:21:06PM +0100, Luca Weiss wrote:
> >> Add a node for the Hall Effect sensor, used to detect whether the Flip
> >> Cover is closed or not.
> >> 
> >> The sensor is powered through vreg_l10b, so let's put a
> >> regulator-always-on on that to make sure the sensor gets power.
> >> 
> >> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> >> ---
> >> As pointed out in v1, this would preferably go via some vdd-supply to
> >> gpio-keys, but this support does not exist yet.
> >
> > This usually means that it can be implemented by the submitter, sorry...
> 
> Honestly right now my motivation to (re-)submit Milos patches is
> dropping. Every patch series I send (cci, ufs, wifi, bluetooth, hall
> effect) is opening a new hole for yak shaving and the ones that don't
> are taking forever to land, leading to me not wanting to send more due
> to merge conflicts between the patches.

It's really sad to read it (although shaved yaks might look funny). I
would not comment CCI side, I haven't looked into those patches in
details.

For the other items:

- UFS:
  * PHY patches are accepted
  * UFSHC bindings seem to be stalled, (although they are reviewed). My
    sugestion would be to resend after the rc1 and if doesn't get picked
    up, ping RobH, he picked up enough patches there.
  * DTB bits depend on UFSHC bindings

- WiFi:
  It's really an interesting question. We should probably merge it,
  because we need to support the ABI for the Kodiak anyway. I hope Jeff
  or one of his colleagues can comment.

- BT:
  I see a correct question regarding WCN6755 -> WCN6750 fallback.

- Hall effect
  Bjorn wrote a nice email about it.

> 
> For trivial things like this, shall I hide/ignore that there's a VDD for
> the hall sensor? In practice the vdd will be on 99% of the time anyways
> due to it being used for other purposes.

It's a very interesting question. On one hand you are correct for a
particular device. On the other hand, one of my colleagues is currently
trying to fight a bug which also might be caused by "let's assume it's
99% of time true". And he hit the 1% where it is not.

> I do get the desire to have proper hardware description, but requiring
> submitters to yak shave their way through various subsystems of the
> kernel is a bit much.

I know this feeling. My APQ8064 cpufreq series died because I could not
fight my way through the L2 cache devices (which is only necessary to
describe a bit of the table). Other series die because of the lack of
reviews. Or because of other in-kernel (and out-of-kernel) obstacles,
reviews, bikeshedding and similar issues.

> I've just recently yak-shaved my way through a limitation of the gdsc
> driver[0] leading to some issues I could've ignored (because CCI worked
> when the display was on), but even that thread is currently stuck on
> someone explaining some intricacies of how Qualcomm SoCs work
> internally. Even though I have access to quite some Qualcomm docs about
> this SoC, I'm fairly sure there's zero docs explaining any of that what
> was asked there because it's $secret_sauce.
> 
> [0] https://lore.kernel.org/linux-arm-msm/20260116-milos-camcc-icc-v1-0-400b7fcd156a@fairphone.com/
> 
> Regards
> Luca
> 
> >
> >> ---
> >> Changes in v2:
> >> - Add pinctrl for gpio70
> >> - Link to v1: https://lore.kernel.org/r/20260116-fp6-hall-sensor-v1-1-69275c6bd809@fairphone.com
> >> ---
> >>  arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 21 ++++++++++++++++++++-
> >>  1 file changed, 20 insertions(+), 1 deletion(-)
> >> 
> 

-- 
With best wishes
Dmitry


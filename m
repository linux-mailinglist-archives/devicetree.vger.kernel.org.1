Return-Path: <devicetree+bounces-270284-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8BrbLZZwpml2PwAAu9opvQ
	(envelope-from <devicetree+bounces-270284-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 06:24:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA7B1E9364
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 06:24:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 728C130541F7
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 05:23:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF1A229994B;
	Tue,  3 Mar 2026 05:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Mcr1UJjM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YTkwQ7Bp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E6D03BB48
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 05:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772515426; cv=none; b=uEM3rN6RKdHBUujEP9g6Kro2hK5ilz9SxKlD5WCZ/e/Gn+62LKzUsx4BwLQKu1GkynjBs1u85hn0abZo9rFnd2/zZs6PMAH1f6HhlONC5sQT0mt9R5FFTmwVVfCvdTyr8ipnRBlw2HFAE06ET+KAuhAgFz0UP/ha4LngfF3Oz+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772515426; c=relaxed/simple;
	bh=iDgW2cfd7htMPhuh6EbpJMy7PjdyF+8N2b3YopKk7LM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oom4l3J8NX1ONV9zD7xUaQkTYPFVmt0431Bh3A6M9GCaZ0erPNp8gbtMzVXlWay+yscZBO5HISjKqlg53Zhu4jj4y9ZkmxMgBwIpQEMHbKmcQRhddR9IDo/Uqc6z/E5vLF6aBzqF6dGECTAwdseEntt2rTPBkGZ0Gty3/CHieVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Mcr1UJjM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YTkwQ7Bp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623533JU3359496
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 05:23:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DhDvLQeyQlT/AZFrDXorArD2
	6aYKZNcJKOOcuYji5lQ=; b=Mcr1UJjMpdCO9CuPEg9ZHTaf7y9K5m8l1DcNck/F
	BY+uACGfIeNANcQ+Qug5A0j5dbgUKkIK7+wyEVp5oLRuaCwSdqWxvkTM2iF720cs
	oHoOpvc/yMf5/taOtkB6XqL/zffBtP6Wkru3R0Sdf3HlTCS+VTAsVWX+DOiHd1Ca
	x6r1VxPdOHUQllGbtEQvxeXeb0enS7Jc9O2+C1D0svqcoBY1eS3cKPzX/imqrShR
	bPTyhYTFW0/YTxzx8jLcaoQQ+Jq4sW2SiHSvi2p9ugixafK9DTI0CDg3+NpoGQ1u
	eBPfKg5hkmS0V7jfgbug9kZ4xIRQMKdz6Vd7MNb9N2KUyA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cns5fr1pj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:23:44 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3598d4b19deso7100876a91.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 21:23:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772515424; x=1773120224; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DhDvLQeyQlT/AZFrDXorArD26aYKZNcJKOOcuYji5lQ=;
        b=YTkwQ7BpQFRdG+0UIVhGIbrOsc3/2bJnD/MO0ZzVDIfO8hNnLzVeFR5k1eAzZnUeNy
         ZnbFNQzg1ym6UgnsKTI0ddYjkYn4H7PNAu6MrErKkGXEJKK2dy0WxowmBU1O3beszcMn
         ZgfFVb+NU/SuQS8Rc7pi2VKmtZ3rqygAzK4+TRTPr6QZFrMDUDYjJGgmE636MIjyEB3I
         YPhGaufUbSWDOnmCEik56ylRylairEyr8l/av5uImouBC03NYDk94RIOv3/TaHYXWGNy
         ujUuRNh9/84PJmBTyvsIr8a6dXzPAYnkLDrPl2MB2TZMLB+4SefogSx7A/LBWGza1yco
         Ms5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772515424; x=1773120224;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DhDvLQeyQlT/AZFrDXorArD26aYKZNcJKOOcuYji5lQ=;
        b=ecBFv7CrmTh+J0ZpP2p0ZKfMEGC77dAuV9dTUlBVuzdGvMT1zBpUfwf6TOUasb3BDC
         2pXxNNCs+HBSjXRb1mvFgMe1K4txkTr4YHge1jZQp4usmw6hI0k/KzAW3ibAZPz4Yhpt
         d+FEcBWxSXXCTTCEqmyjjQmFbUuJWZzZn7zN+HOzZIhBiAk04IBaCxRkub+jD+0Ms/NX
         V19SVlbtLCjDgdV1fFlf7+jAl1j5SHCXDHDlWAjKnaAdqufeZbq2lRXrb1n3UYuY019t
         /+PNN4xbdhri0/a6QgPuid1HueJ8itHqT9YIwNB189kGRYjdl74q+V+QPdmWEtZfX5JX
         /FcA==
X-Forwarded-Encrypted: i=1; AJvYcCVJDG7BF6wX0cROS5JRY+zbEdDh/6ha+KPk+m4Lb+WfNWLOD1bUExW4SDsbuAJlpk1NukZkZlkMCjs5@vger.kernel.org
X-Gm-Message-State: AOJu0YxEJPmM/sohh91wMXxty1X5rKLrDUz8EHOm/Ocwgco9AdD2Es+9
	X/iPoBiRMK5vTHXDBeBo4bit3yM6HE5mNDyf7lLV9h+06DGcFbaOnLec5xJ0MGW7rRkez4SD5gz
	27m++t64JK95FZjMEADbVLAnrI61F0qEM/5xoGp7IgIUMiHvoCaMNfylAq5JxFsvk
X-Gm-Gg: ATEYQzwGl6b4gwGX975XABkJN6R701REOmy4n4U/syNPSQY34uaHIK2n4MOnqn2Oz/p
	BkMaYNOxAFkulPXBkeUsPOOZ/zGaYuZqTrnb8fRBy+cdCYYZ2srrsumqhc0dGWu1SWOFVDMn7qw
	GnCbIwvwLD4eZyzLzrLcNPmsnYQGLu0M5vXSkBXKjZnatrgpLicmP/vRSXy4LcfH0LHp1Z1JrcS
	p5gifFcyKHPLWubrpr3ZHxD4OUcB3rMkgTN3DG2vR0zEqzHJ7FbptX/i3vpagzj/Bdv8S6R+iaH
	aubR6MIXCFWsUJckM9QcwvNoUE0DePR13JaJq7TnHnkMtLyI/xvkjlD0mPn3X6hx7V6kE4yfeX+
	H+jwJGpQ1xKuuu3U96Uk20GK63yua5T00qrA2BvcXIM4Z6+RRdYUvork=
X-Received: by 2002:a17:903:1250:b0:2aa:daf9:6980 with SMTP id d9443c01a7336-2ae2e49855emr131504335ad.27.1772515424055;
        Mon, 02 Mar 2026 21:23:44 -0800 (PST)
X-Received: by 2002:a17:903:1250:b0:2aa:daf9:6980 with SMTP id d9443c01a7336-2ae2e49855emr131504035ad.27.1772515423606;
        Mon, 02 Mar 2026 21:23:43 -0800 (PST)
Received: from hu-pkondeti-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70fa8302absm14767994a12.29.2026.03.02.21.23.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 21:23:43 -0800 (PST)
Date: Tue, 3 Mar 2026 10:53:36 +0530
From: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
To: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Subject: Re: [PATCH v8 0/2] Add support for Gunyah Watchdog
Message-ID: <4427f335-bb50-44af-94a5-142d8355a705@quicinc.com>
References: <20251118-gunyah_watchdog-v8-0-e5de12e2eef5@oss.qualcomm.com>
 <c5a57ab6-ad6c-4228-8ccb-7d7ef306b5b8@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c5a57ab6-ad6c-4228-8ccb-7d7ef306b5b8@quicinc.com>
X-Authority-Analysis: v=2.4 cv=Pv2ergM3 c=1 sm=1 tr=0 ts=69a67060 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=NEAV23lmAAAA:8 a=EUspDBNiAAAA:8
 a=spW7CxkbatQ-H6tlaUEA:9 a=CjuIK1q_8ugA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: euNwKc4HGwztom9v0EnBl10bM5JOPI1O
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDAzMyBTYWx0ZWRfX1NZRKTbG07lu
 8foATOfvRm3t7H/4vlEgd3IEbS/T5/VMaPpohJZLQsoll5d+rGQ2PMAf58bvftuHcmnDc3tj89f
 Gwu0hsVoAydRHkdACl3TFd3P9q5rlfoiSmMjHfuySsulrHJtDlD5cg5dIYZEBOn6OXMFWwB+aaM
 S5qDOL8PfBNU1kpd3YnDghvs2Oz3lp8w9lpgwT/97AJUQln5AHxQnJXZXGSOKBXn9fgGcRX5rb6
 5EIB7JYAIauzVBg1W+iLJJGfZyt6xGZNASYvmk8n8/xlbuLPZs5G8+WSsgkeb/zI1vDcNv1Ydx+
 1KSnRyAcnLWvOdrfYNCzby2ruInJdvWuNeKadsy+LINw3xmHvbOExEBYyu4ReAkQie1O1SHEr1N
 ReFFXZ8AJH55W0+S8bfSaHfhBTwkzAh8RNjZjX3C/5BEh+YPc0ZnPjDXTgpRvvVcgDcTXJ7RTdJ
 kH8321geE9V+VVaXQuw==
X-Proofpoint-GUID: euNwKc4HGwztom9v0EnBl10bM5JOPI1O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 impostorscore=0 malwarescore=0 spamscore=0
 suspectscore=0 adultscore=0 priorityscore=1501 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030033
X-Rspamd-Queue-Id: 1CA7B1E9364
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270284-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[quicinc.com:mid,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pavan.kondeti@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Hi Bjorn / Wim,

On Tue, Feb 24, 2026 at 02:58:05PM +0530, Pavan Kondeti wrote:
> Hi Bjorn / Wim,
> 
> On Tue, Nov 18, 2025 at 10:40:55AM +0000, Hrishabh Rajput via B4 Relay wrote:
> > Gunyah is a Type-I hypervisor which was introduced in the patch series
> > [1]. It is an open source hypervisor. The source repo is available at
> > [2].
> > 
> > The Gunyah Hypervisor doesn't allow its Virtual Machines to directly
> > access the MMIO watchdog. It either provides the fully emulated MMIO
> > based watchdog interface or the SMC-based watchdog interface depending
> > on the hypervisor configuration.
> > The SMC-based watchdog follows ARM's SMC Calling Convention (SMCCC)
> > version 1.1 and uses Vendor Specific Hypervisor Service Calls space.
> > 
> > This patch series adds support for the SMC-based watchdog interface
> > provided by the Gunyah Hypervisor.
> > 
> > This series is tested on SM8750 platform.
> > 
> > [1]
> > https://lore.kernel.org/all/20240222-gunyah-v17-0-1e9da6763d38@quicinc.com/
> > 
> > [2]
> > https://github.com/quic/gunyah-hypervisor
> > 
> > Signed-off-by: Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>
> > ---
> > Changes in v8:
> > - Fix error handling in gunyah_wdt_probe() to fail silently with -ENODEV
> >   if WDT_STATUS call returns -EOPNOTSUPP, indicating support for Gunyah
> >   watchdog is not present. Fail with logs for other errors.
> > - Link to v7: https://lore.kernel.org/r/20251114-gunyah_watchdog-v7-0-f5c155b941d5@oss.qualcomm.com
> > 
> 
> The series applies cleanly on v7.0-rc1. I have tested the watchdog
> driver functionality and ramdumps collection on Kodiak RB3 Gen2
> platform. Can you please pick this series for v7.1?
> 
> As Hrishabh mentioned earlier, both patches don't have any compile time
> dependencies.
> 

Since Hrishabh has left Qualcomm, I am taking over the series. Hence
sending request emails to include this series for v7.0 . I did verify
this on v7.0-rc1 as mentioned above. Since the series applies cleanly, I
have not re-sent the series. However, if you prefer to resend it since a
new person taking over, I can re-send the series with my Signed-off-by.

Please let me know your preference.

Thanks,
Pavan


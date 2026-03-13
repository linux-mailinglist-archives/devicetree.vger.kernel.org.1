Return-Path: <devicetree+bounces-274863-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJWoKFiAs2loXQAAu9opvQ
	(envelope-from <devicetree+bounces-274863-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 04:11:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BCB727D038
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 04:11:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 058F53013A80
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 03:11:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4384632BF4B;
	Fri, 13 Mar 2026 03:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="haGhklKV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="e/CvipJV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F330D1C84D0
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773371478; cv=none; b=dOsh/kaTgfe2AdChieUViSD5o1uocT1TiWT72MDd1z+ywwPkRLgEmQsjgEPb/i4tw16dk/ScPiL8Xi0eydNIkB0rPIxsELdUaNIaARqHKvy8bNSd8SmN9tuXa9WDwyZF6Xov8aREIlu5pxGfmKhTaKJYTo07uCQqXjBpYRZ92wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773371478; c=relaxed/simple;
	bh=WPj9jAJI8vRLXMgPHLKbVFXf0xo+ntJ10JC6Hr7gqTY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=crcMwgpOMXnvJppVoiVzJPQwV6CyfNfuP4j5gzzLkjSDr4n5DCjHIIAJx7xwD/qahS7rKpxhmgPb2/Dj/xCLVx2ZeyjWum1nr2UF5SL4SXZnrhuhjOwcPkoRe9ayX1lcjtZ+Ay5Z7M8rBHQozgNA3++/78K7UZxHAXAOsVfUG2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=haGhklKV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=e/CvipJV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CIRjMu1922472
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:11:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	U9Asctb8ry4ArCj35mnE6aSQfsGb/BccQA2EmxPxspw=; b=haGhklKVERuPvZcO
	sjmgl8UjEKal/G+0CXY1tIRUtK1RfX76l5YTbflgqNhlBbnlx0nJW0r804rwBdsK
	rwpFDFSrRXcy3+B6FlNw/hIDaLqbBOFbYBRyFUlfe/x1xLQWWU414jZmJuPDG7wW
	J50Xhr7NorpU3IKOzy0caXIQdvZLJQHkTJ98Fm2aiDT8Vw8H4bF1Z2FVROQesrkk
	IyvSFH7bNR9fO1ErE8ODybDoT2DeUIsZtIaoSmDldv5PJat67v05AgCSGN/iL+qN
	psZURfVq+N7JE9v1HCG3HsaLFINnoJCC3t9RZfE1sHMbkLbFp7PZ9EoqoQ7ZmqQ8
	vpxpjw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4wv9qf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:11:16 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd81be6f05so1029771585a.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 20:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773371475; x=1773976275; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=U9Asctb8ry4ArCj35mnE6aSQfsGb/BccQA2EmxPxspw=;
        b=e/CvipJVH45bvJYPlqy12AFIbwOXNF/yRud/MmHgCwmC5rvO/hoe3zISXJx0JLojYs
         u30Gs6It7nv8s5vKkA5zTongBAzZc+l0iJuS5qTM3yeegRXezwS3REW32wZwZDzLoa5k
         A7oBKCfZYiAmjkUm62X8LkqwkU7YeQvqDNsXDmfMSXS6fAEsfaq19uUq9sVscO1/nrEd
         OIB5892FYnuok1q33tXP/OsFu2asjAPOwg1QR2/zmDqxd1gK+JIwUSuLmb4IzxpJtTAH
         clvJmbEnUBbccESHaiGSgnTJEEK8kYRgJNd9vyIbOemRl3OqeioyRTqItTwKmKMnEcHz
         hWeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773371475; x=1773976275;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U9Asctb8ry4ArCj35mnE6aSQfsGb/BccQA2EmxPxspw=;
        b=aRd1sT+rGqnvfYtBqIeHH9SQzVbYfgM9Zf10KqwHatrabgzmnnAZE1QN8rKky0tsri
         NtyqITaENPVH7bh99tqqjerPbpDryizTj3iAjjhgE1Ey2ynVLJFjFnbwe3/Y9CZj3yc0
         PUzmuKSFaomUkcpJbM9N0njfCdTo0NwhsyL/fSAJNMi34bueBMhvHT37TU+ons+diE8n
         LtclguQFikD72csMs1Q3Z754/yYQWrSpCO4iteTQ/LF0bzKDJ+312Fdc+HQ0klt70Rl/
         ZwZ8IdkHQEt+uV8pQLsvY0GlDTE3SeyGdIJhKr7NGeyJY3ofaYOzxi7i4eNXFCSlfnpw
         RVeg==
X-Forwarded-Encrypted: i=1; AJvYcCUnp1X+RnMB6owAThWHLJOd/pclV8iBeOpSyEqWtDkH1VzJkiIYTphg/TEI+8NNqY6N7qPrao9rCb7D@vger.kernel.org
X-Gm-Message-State: AOJu0YxxUdOzVZ6iqwLtGPyTMsLBUsGUWa87BwTPhmUIkU2NGjsf+KqD
	AXXQ9mS1csx7ILpiYEDD57+zHb+MUN3qOGfpY8sSDq4RLkOIpQUZyO29faQpeHbmYDY2eB2eh09
	6Jd4k2pLxWW12WItNJoIacsCn5GBJi7+gan7dW0OYIlGJWidcXKaUHI3jO3OmnU7e
X-Gm-Gg: ATEYQzwik1Po6pMu3vzkIoBSGazERZwob5VqzSAkLTUSZoWqdVA9+dbrGe0k9ySuD/S
	W4aKYMQgGo44EMH/cIpm9VbHOWyxfXGSO1OsMILOl8p8wQ9uctNzNk8inpa8DfjOB9eb+udC6B0
	4wRh0qJTteQGEZvRv6yYRMxcAXLMMyXVk+Cgpqi1+DN76fRjUlhF6NMZGr/2/hkKKnv2Z3kQXKY
	0blBPXAZuWWIA9UX4UY6KNKc2H0FJzZHcY5ULxJqjKfc2vCjEt50VweOI271uQugmVntqrfFVdm
	Dgt3jpYEzFFsRTAtdkFlR5cuiBzNPBWpbNedS21HgDG9//9o5beuXguMZ4NtYf5I1a1GM5uUeKh
	DpUjgZEnpkMyMwobYW2C9aSjVuHtgYPufvBMdi7q1EnnQhRcYQNi+AeV2CKtXeO2/x5to7JL59D
	KG4IKzI/ZLBWMwMfNnHHCsCG/LmToPBNAE3fU=
X-Received: by 2002:a05:620a:44c3:b0:8a2:234a:17be with SMTP id af79cd13be357-8cdb5a1c13amr268458985a.7.1773371475201;
        Thu, 12 Mar 2026 20:11:15 -0700 (PDT)
X-Received: by 2002:a05:620a:44c3:b0:8a2:234a:17be with SMTP id af79cd13be357-8cdb5a1c13amr268456385a.7.1773371474666;
        Thu, 12 Mar 2026 20:11:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a67e7dfb3sm11881791fa.45.2026.03.12.20.11.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 20:11:12 -0700 (PDT)
Date: Fri, 13 Mar 2026 05:11:09 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, mkl@pengutronix.de,
        mani@kernel.org, thomas.kopp@microchip.com, mailhol@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: qcs6490-rb3gen2: Enable CAN bus
 controller
Message-ID: <k34bb7tttyhplmz7rahkt6oq6r55kx7hjyf4degkadmspovhvs@q5hf55syszub>
References: <n6affntgff5wy4xmm255v5h2ejpepicpz2cybcuvsxmry5td6u@jucskv7zrzvv>
 <5cdfe5a5-3c78-45a2-886c-768b224ad776@oss.qualcomm.com>
 <wbx2qrkhpsntggzqkzkpi4sa6qv3buhkjbwmjoa7zgw2oc4b7u@qugyhcxb6qrh>
 <316fa702-6cd8-4842-aecf-c176a5a53e2e@oss.qualcomm.com>
 <qvuokwiqllm6zmlzj3pfvziylrr5krjya5rnf3ojeycdoutlro@fl5qukh4vorm>
 <5486697e-d02e-4b12-9a60-99d0de343515@oss.qualcomm.com>
 <2ho25tzct6t7gsuyufyg7m4a2ikmblhukb4uddwc7p35wd6yne@heippz3lh4kj>
 <465ab63f-3d0c-46f7-a08e-cdc5fc26b600@oss.qualcomm.com>
 <73nfsa3r3isf2shizemroctjpleya4wnnel634g7b5qyvvmze5@vre6wrdxxpet>
 <0bf0a64c-0f05-49ea-b7a2-e1b1345a3d7f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0bf0a64c-0f05-49ea-b7a2-e1b1345a3d7f@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=GcoaXAXL c=1 sm=1 tr=0 ts=69b38054 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=2avrPvC3gy1p7HBTOx4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: LlziUTbvHMX5ejdLuptICGfFazxeVGgO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDAyMyBTYWx0ZWRfX2by4C8+VYaW5
 ZXbq97/qD6QBbof/pl+tHNMw2KlR8L/N6o7U+TZDMD3wB+vv1qQ3Wt4mIwAjoYBntr4fSBFHAbo
 MhGexh7FT9Q7iHmIJQ13ydpJKjlPZ7LS/hcCHsyQu6CTsZWvFmff8l2klKBszBSCfzL5debwtZt
 cvkr1WjxXj7Dq5cCKijMN/zF5Bsv3Um0GK9FTBQToB30u5Mk5yeS95hwapIsGUNbkA9MJY0QiaI
 vzMbzOz4sdo8qmfYUkpmtz7gvgfqZpk0R2G+934drj6lDVxLyCtmCHog9kOabWsjvKrcc2BMAor
 ro6xAsNdvHaplFy58XXwBMlsq7JsO4ScVj8Xk/l1iEQvIXsvUScsMDyZUJ8TYg1l3oFn31liH+E
 NCddGpRgCMqm73sc2ImkfawFNRvmPUrkYY39NVxb//STrQDt0O8rruUXcwvy6Xwia9V8IWNj7Mz
 Vbj3t81ToR8Y2t+hvWg==
X-Proofpoint-ORIG-GUID: LlziUTbvHMX5ejdLuptICGfFazxeVGgO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_03,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 spamscore=0 adultscore=0
 impostorscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603130023
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274863-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4BCB727D038
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 12:04:47PM +0530, Viken Dadhaniya wrote:
> 
> 
> On 2/18/2026 5:49 AM, Dmitry Baryshkov wrote:
> > On Tue, Feb 17, 2026 at 12:15:12PM +0100, Konrad Dybcio wrote:
> >> On 2/4/26 2:09 AM, Dmitry Baryshkov wrote:
> >>> On Tue, Feb 03, 2026 at 05:07:11PM +0530, Viken Dadhaniya wrote:
> >>>>
> >>>>
> >>>> On 1/19/2026 11:59 AM, Dmitry Baryshkov wrote:
> >>>>> On Mon, Jan 19, 2026 at 10:21:37AM +0530, Viken Dadhaniya wrote:
> >>>>>>
> >>>>>>
> >>>>>> On 1/9/2026 7:35 PM, Dmitry Baryshkov wrote:
> >>>>>>> On Fri, Jan 09, 2026 at 06:23:39PM +0530, Viken Dadhaniya wrote:
> >>>>>>>>
> >>>>>>>>
> >>>>>>>> On 1/8/2026 7:33 PM, Dmitry Baryshkov wrote:
> >>>>>>>>> On Thu, Jan 08, 2026 at 06:22:00PM +0530, Viken Dadhaniya wrote:
> >>>>>>>>>> Enable the MCP2518FD CAN controller on the QCS6490 RB3 Gen2 platform.
> >>>>>>>>>> The controller is connected via SPI3 and uses a 40 MHz oscillator.
> >>>>>>>>>> A GPIO hog for GPIO0 is included to configure the CAN transceiver in
> >>>>>>>>>> Normal mode during boot.
> >>>>>>>>>
> >>>>>>>>> The main question is: what is so different between RB3 Gen2 and previous
> >>>>>>>>> RB boards which also incorporated this CAN controller? Are there any
> >>>>>>>>> board differences or is it that nobody tested the CAN beforehand?
> >>>>>>>>>
> >>>>>>>>
> >>>>>>>> The behavior is consistent across platforms, but I do not have details on
> >>>>>>>> how other platforms were tested.
> >>>>>>>>
> >>>>>>>> On the RB3Gen2 board, communication with the PCAN interface requires the
> >>>>>>>> CAN transceiver to be in normal mode. Since the GPIO-controller support
> >>>>>>>> was recently integrated into the driver, I configured the transceiver using a
> >>>>>>>> GPIO hog property. Without this configuration, the transceiver is not set
> >>>>>>>> to normal mode, and CAN communication does not work.
> >>>>>>>
> >>>>>>> How do we verify the mode on a running system? I have the boards, but I
> >>>>>>> don't have anything connected to them over the CAN bus.
> >>>>>>>
> >>>>>>> BTW: can you recommend any simple setup to actually test the CAN bus on
> >>>>>>> those devices?
> >>>>>>>
> >>>>>>
> >>>>>> I tested the CAN controller using the following commands:
> >>>>>>
> >>>>>> 1. Loopback Mode Testing (GPIO hog not required)
> >>>>>>
> >>>>>> ip link set can0 down
> >>>>>> ip link set can0 type can bitrate 500000 loopback on
> >>>>>> ip link set can0 up
> >>>>>> cansend can0 12345678#1122334455667788_B
> >>>>>> candump can0
> >>>>>>
> >>>>>> 2. Testing with External CAN FD Adapter (PCAN-USB FD)
> >>>>>
> >>>>> Thanks! It's price doesn't make it esily available, but it answers the
> >>>>> most imporant question: by the USB CAN adapter.
> >>>>>
> >>>>> Did you add
> >>>>>
> >>>>>> A GPIO hog was required to configure the transceiver in normal mode.
> >>>>>
> >>>>> I'd phrase it differently: to pull the transceiver out of standby mode.
> >>>>> By using the GPIO pin you make it always stay in the normal mode. It is
> >>>>> fine, but it is not optimal. Instead a proper solution would be to use
> >>>>> the MCP251XFD_REG_IOCON_XSTBYEN bit. Could you please instead implement
> >>>>> support for setting that bit, based on the DT property.
> >>>>
> >>>> Thanks for the suggestion.
> >>>>
> >>>> I tested enabling IOCON.XSTBYEN, but on this hardware it doesn’t bring
> >>>> the transceiver out of standby by itself. With only XSTBYEN set, the bus
> >>>> remains inactive and no frames reach the CAN adapter. Clearing LAT0
> >>>> (driving GPIO0 low) is required to put the transceiver into normal mode;
> >>>> data transfer works only after LAT0 is cleared.
> >>>
> >>> Why? It should be doing exactly what is required. Could you please check
> >>> the voltage on the pin with the XSTBYEN bit set?
> >>
> >> If I'm interpreting the datasheet correctly, XSTBYEN only muxes the pin
> >> into its function and does *not* actually impact the operating mode,
> >> which would match what Viken is observing
> > 
> > See the "Family Reference Manual":
> > 
> > Setting the XSTBYEN bit configures the INT0/GPIO0/XSTBY pin to
> > automatically control the standby pin of an external CAN transceiver.
> > The pin is driven high when the MCP25XXFD enters Sleep mode and driven
> > low when it exits Sleep mode. Standby pin control is not available in
> > LPM.  IOCON is reset in LPM and GPIO0 will be configured as an input.
> 
> I measured the standby pin voltage with only XSTBYEN=1 set
> (TRIS0 left at reset default of 1 = input): the pin is HIGH
> (~3.3V), meaning the transceiver remains in standby.
> 
> The root cause is that after reset TRIS0=1 (input direction),
> so the pin is not driven. XSTBYEN=1 alone has no effect while
> the pin is configured as input.
> 
> Clearing TRIS0=0 (output) atomically with XSTBYEN=1 fixes this:
> 
>   regmap_update_bits(priv->map_reg, MCP251XFD_REG_IOCON,
>                      MCP251XFD_REG_IOCON_XSTBYEN |
>                      MCP251XFD_REG_IOCON_TRIS0   |
>                      MCP251XFD_REG_IOCON_LAT0,
>                      MCP251XFD_REG_IOCON_XSTBYEN);
> 
> After the above change: pin is LOW (~0V), IOCON = 0x03020042,
> transceiver active, CAN communication works. Verified on RB3
> Gen2 with PCAN-USB FD.
> 
> Should I send a patch implementing this, gated on a DT property
> such as "microchip,xstbyen"?

Sounds good to me.

-- 
With best wishes
Dmitry


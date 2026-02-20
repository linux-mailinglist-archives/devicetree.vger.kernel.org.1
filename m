Return-Path: <devicetree+bounces-266918-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6IvbMmVCmGneDwMAu9opvQ
	(envelope-from <devicetree+bounces-266918-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 12:15:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E49F167325
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 12:15:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C7B673004927
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:15:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F378532D435;
	Fri, 20 Feb 2026 11:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="en7PT6MU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PnoRQiUI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C052C29B79B
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 11:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771586146; cv=none; b=Iwaw9jwWwPOoOYut2pzUWxsWYtq5oacUymGvmBVOMgVzllYA0OlcxFA8KxrImFBOkinE/x2R68cwXm4NQep4Bx6yIFzDUm78MgJpH0E6w/No7hlIoy2UJrmb2Wv3jRIYAMfIDUWskizJt0XaL+HkD32VySJSzriYwJVCv1gxyg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771586146; c=relaxed/simple;
	bh=U7jG7pwKgorBrNi2MpLPry9SRJx9mEM+lupPKzoDmS4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ShioahXomNq1wBmX/cFRswfz6u9JDMQpoJS0GWgy7+ZgE2fP0gfc8ZiNlZTnvUVJi/J3msgqOv5ieuczNHxU22QUrmZ2GppcINLeUZPkiyfPR1S4wU8hQGN2p/PO5rotkzD61OpTsf4E+9iQ/7H2/4D92GtA6MTYoALQyFSCLAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=en7PT6MU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PnoRQiUI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5S4EJ2553612
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 11:15:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=b2GYOalqmiTplVooSJ9TenZd
	k0ZNjxw6paig2ezJLo0=; b=en7PT6MUG8JNUziVY5gM0Vb1J4sLtuA31epz4g5I
	OUQpyNiD8xiBkQrTN/sXtsUdS0TZni9+LkBJ7fTPXViXAHjaVAwEg+E8XL90xSgv
	CH2nkuypCPw2KkjfM692JIwr3o1Bjh3Bgmxv/jUxXP1vVrM9to0P2UlSF1aIrmXT
	6i654tEJqgbwNt3XhzjWMmh7zbQgOiP4yv/x5HgAv+rz/o8Ka52e+SGXOLfNIraA
	YOfcvQoU0o3/QqdCEeEj4INqZ/itjHkAKy/kFG9j3iIdWS+JBcu8DYnOBIlfT4IZ
	XLXhnFphCEezuE/3kcjPqXsn4uN7kGWYuWn6JYAF/dzSNQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ceh7t0u5t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 11:15:44 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-8249cbbf769so946273b3a.2
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 03:15:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771586144; x=1772190944; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=b2GYOalqmiTplVooSJ9TenZdk0ZNjxw6paig2ezJLo0=;
        b=PnoRQiUIO6/IDRniTrItmIuzMsLTbfQWWuLcC3YrKHWchRttvSpvyHaISIg7Knhu80
         lduSz1vyj5naSdzKovdzi1aml5tpRlwESDih2pzA2QcXtkwiHjvvshbCb0+PYjAV+ctP
         SlhDJLlqayYfXnnFXoI5SzcCNjtXV79R4i5rKn0jJo1462MG6TCHrWSgD+aPzVcajP5L
         LPg7Ve5wwljreef7GpAuzYjkPg41ix7d7HhNada9IhaZ3E5hi0H35YbOXzgMmcsldrX4
         rnDz8WOvQSk/kGdQw3bZrwPcfZTynPJTzxGAzpTBt84YUXRvW0yKsbOaDhOg5HwDq+2T
         WwCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771586144; x=1772190944;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b2GYOalqmiTplVooSJ9TenZdk0ZNjxw6paig2ezJLo0=;
        b=LRFR9fyMLvOurnM8pQJsMdb0fry2InTet4dqaKxn61fmIB6FxtQJuXXgKy2DG4oB+0
         U8gYsFRLSC7CTFvriAdyaQ543VbX8+LwFxluawIBpfRFTYXL303jaiiyFvaMhmwRH3pA
         XiqJNQkxDKg4uatAGLSd8eaflLA78u7JL6EC87H2nTT4FCy1iBHaXQEQ8eGQjz0khWyp
         Zoc5flDkEuwu+LNs2IBBNj50QCMaRS1pTKU02Ml0idEEGzEEETHu+XdPuqJCyI5V1SET
         KmeI//U/yBiJn4BIdXzqJ107Rg6Rckgl8P2m1iVoqoRcVM1jsOFxV+TdHWj3vxAspsGR
         Hkog==
X-Forwarded-Encrypted: i=1; AJvYcCWQ50WwraT+vm9JLd3FWjdTNjVPil6gGuKbSfvI/qdykPZAoblPbC53Lsjq/t2nScBhR1n+t3igwps5@vger.kernel.org
X-Gm-Message-State: AOJu0YwSTZ23CwDp2npGfQXttOixGuisRCDmPJBMybqdcj0svy6gE3fR
	B2SESnkDdg53ariPgqYzQ7dDeoQ7xt/y7l7ukey2RLifD5OxXdcJATLz8zhI0iebb3dpvW5qDGv
	RC40j5AVZkQNSCrmsJKoDkSzpsMcYF3mRPO37gGLEJjv3cTFKP/LxSyJHHw6/US6s
X-Gm-Gg: AZuq6aLU8BtpVT7SefbeHBnAKEGGxWvcAl6DpnohK7o4++cyRzZeCpa2o0g/+81DASR
	k/TKrkGHv3D/rSJEcv2zfYwl0+2kDVEO63hmU1GCVGi+0dEuaf6gmiOzwP28xHMfIQUAciuC91n
	RFsA61g0tRoGtNepWDvMVvEvWCmVvV2c7pOeWUSTQNimAg2NUv+10ORBTXwT0LTx+AcImC6VJlE
	545Vzos/j+8e9H00srdlbNTZMMw5dgYHo8uGO1Q2yNA/idlZg2+8mO2E0PHBy61di6jLAzW5idq
	GPgELBxyYa3599XBCvJJZZMdNyGf00olM6Qcb6zbAUIggvVAQ/daMxjGXIh9osIdN4kpHD6iP3Z
	Lds+y2lS77H8TxL/t8EoXZ6wWSJS6tFquFSTx/LF44sdBgCWRq34zV8L5xR8=
X-Received: by 2002:a05:6a00:439b:b0:824:16ae:9ec4 with SMTP id d2e1a72fcca58-8252771735cmr7655832b3a.63.1771586144227;
        Fri, 20 Feb 2026 03:15:44 -0800 (PST)
X-Received: by 2002:a05:6a00:439b:b0:824:16ae:9ec4 with SMTP id d2e1a72fcca58-8252771735cmr7655793b3a.63.1771586143732;
        Fri, 20 Feb 2026 03:15:43 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824c6bb5acesm26585871b3a.63.2026.02.20.03.15.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 03:15:43 -0800 (PST)
Date: Fri, 20 Feb 2026 16:45:36 +0530
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        linux-crypto@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 2/4] soc: qcom: ice: Add OPP-based clock scaling
 support for ICE
Message-ID: <aZhCWMTi3seAbXo5@hu-arakshit-hyd.qualcomm.com>
References: <20260211-enable-ufs-ice-clock-scaling-v5-0-221c520a1f2e@oss.qualcomm.com>
 <20260211-enable-ufs-ice-clock-scaling-v5-2-221c520a1f2e@oss.qualcomm.com>
 <bfbe04db-bf64-418b-a75a-88879bf0bf2d@oss.qualcomm.com>
 <aY7MidG/Kcrs83O9@hu-arakshit-hyd.qualcomm.com>
 <3ecb8d08-64cb-4fe1-bebd-1532dc5a86af@oss.qualcomm.com>
 <aZYMwyEQD9RPQnjs@hu-arakshit-hyd.qualcomm.com>
 <6d2c99c4-3fe0-4e79-94e8-98b752158bd6@oss.qualcomm.com>
 <aZgOUv+QweA7vE1W@hu-arakshit-hyd.qualcomm.com>
 <5bf31bf9-835b-4b87-a4d0-8452d516f13c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5bf31bf9-835b-4b87-a4d0-8452d516f13c@oss.qualcomm.com>
X-Proofpoint-GUID: oh4OzTpqPZRF0_B3QZJja0t9nryuoGtr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDA5NyBTYWx0ZWRfXz/3rokes0EDF
 coznrajcY17JKmfyjw8WKIU5eFSWSbiUUKhPHgbeL8+VqGKu7M93/VeulP0J10Xi+jPejnYDl9k
 vOGkTgkFVa1bycuOduwaEHwtg6Q9slZBPGIup49hWNhhaUyX3QUGy4IPYkGW5MOJqqjZomrJpcq
 WCcxPZnmVByAKl7D0/jjBX1iLRHg9V4sz9ejdyDdEdmDbjrFkv67DHXa+h6hK9b/0YmEJJk2yfv
 MO9mFPmw9wN8xgPTi5hwoCAq+pV8xDlhbsusLifaKIkYsyKNk0Y0jU+XcsSL6E2mPg5LWpLaShR
 Pq7oJ5pS3KqVVqemtZ6ZVbuQUyw7F642S962c9+BwlUYklItkycDBckaGFZB+SZvgGcf8prISXA
 s+Dqn/Cj0baJ/I8hQaWB/fS0l1pBCd83ybVaa8j6rejqTN3P/E5xkM8p3srAA9gzbEHcAkXzc26
 k4oInwHuDh25QMJLgxw==
X-Authority-Analysis: v=2.4 cv=PcTyRyhd c=1 sm=1 tr=0 ts=69984260 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=-r4YXHmrKH74x9D_t9cA:9 a=CjuIK1q_8ugA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: oh4OzTpqPZRF0_B3QZJja0t9nryuoGtr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-20_01,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 clxscore=1015 phishscore=0
 adultscore=0 suspectscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602200097
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266918-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,hu-arakshit-hyd.qualcomm.com:mid];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abhinaba.rakshit@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6E49F167325
X-Rspamd-Action: no action

On Fri, Feb 20, 2026 at 10:42:58AM +0100, Konrad Dybcio wrote:
> On 2/20/26 8:33 AM, Abhinaba Rakshit wrote:
> > On Thu, Feb 19, 2026 at 03:20:31PM +0100, Konrad Dybcio wrote:
> >> On 2/18/26 8:02 PM, Abhinaba Rakshit wrote:
> >>> On Mon, Feb 16, 2026 at 01:18:57PM +0100, Konrad Dybcio wrote:
> >>>> On 2/13/26 8:02 AM, Abhinaba Rakshit wrote:
> >>>>> On Thu, Feb 12, 2026 at 12:30:00PM +0100, Konrad Dybcio wrote:
> >>>>>> On 2/11/26 10:47 AM, Abhinaba Rakshit wrote:
> >>>>>>> Register optional operation-points-v2 table for ICE device
> >>>>>>> and aquire its minimum and maximum frequency during ICE
> >>>>>>> device probe.
> >>
> >> [...]
> >>
> >>>>> However, my main concern was for the corner cases, where:
> >>>>> (target_freq > max && ROUND_CEIL)
> >>>>> and
> >>>>> (target_freq < min && ROUND_FLOOR)
> >>>>> In both the cases, the OPP APIs will fail and the clock remains unchanged.
> >>>>
> >>>> I would argue that's expected behavior, if the requested rate can not
> >>>> be achieved, the "set_rate"-like function should fail
> >>>>
> >>>>> Hence, I added the checks to make the API as generic/robust as possible.
> >>>>
> >>>> AFAICT we generally set storage_ctrl_rate == ice_clk_rate with some slight
> >>>> play, but the latter never goes above the FMAX of the former
> >>>>
> >>>> For the second case, I'm not sure it's valid. For "find lowest rate" I would
> >>>> expect find_freq_*ceil*(rate=0). For other cases of scale-down I would expect
> >>>> that we want to keep the clock at >= (or ideally == )storage_ctrl_clk anyway
> >>>> so I'm not sure _floor() is useful
> >>>
> >>> Clear, I guess, the idea is to ensure ice-clk <= storage-clk in case of scale_up
> >>> and ice-clk >= storage-clk in case of scale_down.
> >>
> >> I don't quite understand the first case (ice <= storage for scale_up), could you
> >> please elaborate?
> > 
> > Here I basically mean to say is that, as you mentioned "we generally set
> > storage_ctrl_rate == ice_clk_rate, but latter never goes above the FMAX of the former".
> > I guess, the ideal way to handle this is to ensure using _floor when we want to scale_up.
> > This ensures the ice_clk does not vote for more that what storage_ctrl is running on.
> 
> Right, but what I was asking specifically is why we don't want that to happen

I would argue saying that, having ice_clk higher than storage_ctrl_clk does
not makes sense, as it will not improve the throughput since the controller
clock rate will still be a bottle-neck and it will surely drain more power.
 
> > Also, this avoids the corner case, where target_freq provided is higher that the supporter
> > rates (descriped in ICE OPP-table) for ICE, using _ceil makes no sense.
> 
> This is potentially a valid concern, do we have cases of storage_clk > ice_clk?

As of now, on the UFS storages (targets KLMT) I dont see the
storage_clk (FMAX) > ice_clk (FMAX). They are mostly equal.
However, I am not sure, about all the other targets and cannot
call the same will persist on the upcommings as well.

Abhinaba Rakshit


Return-Path: <devicetree+bounces-263827-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDYNGCZ9iWnk9wQAu9opvQ
	(envelope-from <devicetree+bounces-263827-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 07:22:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C2F10C02D
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 07:22:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A54073003379
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 06:22:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E861E2EA754;
	Mon,  9 Feb 2026 06:22:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Dmfmx/45";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WwsgUmg7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A164D2EA156
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 06:22:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770618147; cv=none; b=pb/IU+7pFb3ja5vRu7ipiCOZB7LUY8hU8ivS9PR7U4M47qw/S7uc/TF5WPB+x/Vo88BUmaNT7UfBprBeJ4RirPv4mf9gDKYz3pSznCbxmFqsP8vEqylz1y0qcnguy8JHev4i4gEXdstgSsFl6XtRpYJpDhLgMx42L8gXKG2rwJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770618147; c=relaxed/simple;
	bh=K5/ltYlr6GRPfdVVThJFzkYqQ56GhMhiBNiVsW29wbc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HonIm0N5hqEmD0dMtU0tgUX8A+qevG/WvXvabbWSX8eXc40RKgOBaQVwQxFJhCpbblV9nX18S834WpfMea3j8rSqMOqGSqf+obfQDoEKoMvWNiFvuwL2wD/aZewnzWJpaMy+bZi4pHOXmS9A4k++2hI9OBnUFbNTxun9+r+mHGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Dmfmx/45; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WwsgUmg7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61959jkW1922930
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 06:22:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xnO705Wu8j45ylzqS1EY9s49
	Jf6hdXoBS+EZWH+y0d0=; b=Dmfmx/450ECWWlb3wwcA5QpxYt+Qi3lWkqdEMsCU
	CnUfzkEGZckyztIJXIhQmDMDyvX8ncJGwKnUfEmJqGVeauHP6Fp8e2hTghAq0Elt
	dqwCAAS/tuft/0xNznX+uCPCCBwmMZMcHlg6NRz5lkrE08i75qOa50lCAW6g6Fmp
	cRgMnBKawvWVegeERWW/6xE0+5RJFk/kEvRARvrTpXhlI6YTO++jqd2OojGxQM5o
	Qk5v2rpsla6mCMWtvBVwkI6JVLQvZ4zargb2qwrDo0uB3/7CLhmnLHRa+bzqLdq7
	P3EJBQbkdkttUOjs7SPEJHA9m0UiJ2x4zPIabL0mjQYbCw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c796kr8nn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 06:22:26 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a784b2234dso133336705ad.1
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 22:22:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770618145; x=1771222945; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xnO705Wu8j45ylzqS1EY9s49Jf6hdXoBS+EZWH+y0d0=;
        b=WwsgUmg7HTmZolcQS+0pw/0EAMHIwd0nFVn5whI3TVO3dKPAMvJV6OoyndHB4GTauH
         dyBl+AHlq6VZ73vi/rI3TXZ35PjEGW47HE1HsLQy70JmNiWlTfjoTBOCDsv6SDpjVNTZ
         awpMcx6zohhU+CWhVzrTNNcBuJzEuazsDNG9he9n6OQ62dv2awZq5r6uuCMofZ9T+ZVq
         xvI4sDM86zRdwWY34DdLy+MrsA7IiDwJ2XY7LxAPyq5xs2DCQ8dihL8AiYyfUAQ8RvWm
         MaEeeNd8YRsLUwG72UBAxpFzxZH20zOTGatiRj5Lls0aaoIzc+/eWjUCw5GQ6hIxjsYW
         Bfow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770618145; x=1771222945;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xnO705Wu8j45ylzqS1EY9s49Jf6hdXoBS+EZWH+y0d0=;
        b=ZDClTCNSe1yOXrh+xgzzdWoIYDIgA+6S+Nogylrf3PI8Tuql4DIEuktOzfH8EtVPgg
         6ofz1VAZnTaeQQeC0pi8+t9wf0FnDjAX9B4qOIESJsOGtIP6FY8+CSsff1wOqSgR96jD
         7zeCy/M/LPt5VJ7j3Q2kjn2tbpiyM5V5pPqu/+Lk8ICWwCziiHgi5lQp368oD7PYMPaq
         sfRdM3c5VzVajx7Kc/s9tONC6T+S0rq7FnMXID9l+RxmQkMS2ikx6O1IjscDHoktMdji
         a4FvZNBfcHjyAWPkxZyt46xHcZWxu75I/9YDHoecnT/lFr6aGdfhM6CGyFSHSQxxR3Gs
         Xw6Q==
X-Forwarded-Encrypted: i=1; AJvYcCW8g3wia/VF+uyun5dVsonyk6b+B4sKXnjwABKG8hRPiMIkWlI7hsQhS7bwaUuNLnUiqjoNJxv336Q+@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0/sLMkCkANXlFr0n75L3XoBGiblLLTV4GZqRckOSS06jAXF02
	PLceV3VsLNHdAy5sUWtAvOj23kj1OwBAUOpx0cenf1a3SnTjgU01zchPUmzJhOYWtz3njmYzBxI
	HtJvKySZhi6TTKAc5+sDlIS32NS4svBYzFRasXQ/HMNqxl2ZSBMK/2EQCYN3V3kav
X-Gm-Gg: AZuq6aJms7fp3tHrN1al4zLKirmisVrrUCb811dfXlL9S+JfddUyOEX2NguEG8N6QdC
	1g/TVzLYIQ22Ya8O0Zo6bxMIjfDdaCchHxenORBpRYVX6+qAKyfibQ/B7L0mOIb4P8nyVkfVxJU
	z92zD91q1sGN5FYxa+Nst+YYG+ZEC08+ZhMQ8wXzvPHiE5ZAB2e9LEYBBxta2UrLJHdSKrPB2mg
	J1XEFIVosNtI1VFsCYgxXcSVBHkAOjb9lCkhIeR2P8G0B7XH5iuTx0z9cq5sYRslwxAaNPRpyD+
	WhyGMN2Yv1AnmmUGOFycpUc5JWysXrXDX1XBxl9wJ5EGPvjqPmVLffnE10vTfbpcaijEZtx3w3g
	g3Jomk1Y7S2mObSHKLM69XRY4LBAOKBbjz7D1
X-Received: by 2002:a17:902:ecca:b0:2aa:e7f3:faf3 with SMTP id d9443c01a7336-2aae7f406a2mr26279745ad.23.1770618145329;
        Sun, 08 Feb 2026 22:22:25 -0800 (PST)
X-Received: by 2002:a17:902:ecca:b0:2aa:e7f3:faf3 with SMTP id d9443c01a7336-2aae7f406a2mr26279475ad.23.1770618144782;
        Sun, 08 Feb 2026 22:22:24 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6dcb5e5dbfsm11016414a12.18.2026.02.08.22.22.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 22:22:24 -0800 (PST)
Date: Mon, 9 Feb 2026 11:52:17 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Xin Liu <xin.liu@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, jie.gan@oss.qualcomm.com
Subject: Re: [PATCH] arm64: dts: qcom: hamoa: Add PSCI SYSTEM_RESET2 types
Message-ID: <20260209062217.tx42yl3dlgx4nqwz@hu-mojha-hyd.qualcomm.com>
References: <20260209042700.1186392-1-xin.liu@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260209042700.1186392-1-xin.liu@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=IeyKmGqa c=1 sm=1 tr=0 ts=69897d22 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=2u4XCvSW4dGg4L_TM7YA:9 a=CjuIK1q_8ugA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: OwIh_0pKd3l7qfE9U9WrK5In3SGNazpR
X-Proofpoint-GUID: OwIh_0pKd3l7qfE9U9WrK5In3SGNazpR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDA1MSBTYWx0ZWRfX5rzCnU2ymdV+
 NQQDVrDeQAbneAojGt+sSKGns1huzFdbwu5Q4pdF72Mpv7rb5tD7vrpCkpNcU7P0Os/en+9w7B4
 AwloLzQW8Isg8DfSY24fP9BMO9USh6Pcfi+zeZ9fPk8P1Fco5O8pazGioJpzdy3FEBtUA4DgbYe
 4D6E8gsfe0liyNp4yl6U7NlLHZTW0y0+5zjSGDv1z4JUDQ8QpEU+Meybhx42LNtyt5ajMhY/Sb+
 KnxEmAs5tFTBgK0jF6bXLyhlsfFvqHvcf6AO8WLJVqpebxligh5NaUZfNNmIOQOPLAdzWkphWMz
 aewNwIHYnNopgd9Jv8yHMZh34hVOnRFq9dOh7LutuC+/OnnsAK+FaPZ3XxrPpBlLU9yXFSTZtad
 YP0ceMAbJZwcVWOR11GSSQDI23PtaVDFLXfEBqC/UY6C7GtwgdN4z0IGnLblVhop+U7rn/3qMPK
 ypmdouOxu23e/HKcVEA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 spamscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602090051
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263827-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mukesh.ojha@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 40C2F10C02D
X-Rspamd-Action: no action

On Sun, Feb 08, 2026 at 08:27:00PM -0800, Xin Liu wrote:
> Add support for SYSTEM_RESET2 vendor-specific resets as
> reboot-modes in the psci node.  Describe the resets: "bootloader"
> will cause device to reboot and stop in the bootloader's fastboot
> mode.  "edl" will cause device to reboot into "emergency download
> mode", which permits loading images via the Firehose protocol.

I do not see you mentioning any dependency here, although it has one.
Please wait for the dependency patches to be accepted first before
sending.

-- 
-Mukesh Ojha


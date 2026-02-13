Return-Path: <devicetree+bounces-265224-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YF19OOl8jmmJCgEAu9opvQ
	(envelope-from <devicetree+bounces-265224-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 02:22:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F609132404
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 02:22:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 86D1F30879AA
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 01:22:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFB0C224AFA;
	Fri, 13 Feb 2026 01:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GiN7jc4s";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="f4GJFPZK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70BD7214813
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 01:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770945763; cv=none; b=pc83CEo0AHxdauv/7nIg201qzNery79L5fh0AqyLtwjqEORpkGCZ9XwwmCfmlOvFNPOyK8lFR2xT2F3/IAMeYPA3bQimXwQh6PqiLgGgPVjxUrp6vIMvo2Uhj9qMKp7oe8y75VZRCNfX9+Hisd4EDLpz6hzqtvWSGPmbbCzdU/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770945763; c=relaxed/simple;
	bh=2EeIMhJK8PFDk+lw2mlbKJHzWDiXMy1oQw7hKItHAM8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M5btGQ6mQ1gAiQJZT/ELXetdW0htgljGRDNlaL06pubrVbkBuFamVHoExhUg7X+Vih3KC3UHbw6QfWDz01K86MZK8cpA2EWZvJxxvNTa9Dutymd2J2G/wXZFaprJyHXvNgGkIcSKvfnl9GkTabDSmlCOqS43b++SCk5SBvLLJho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GiN7jc4s; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=f4GJFPZK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61D0rqo93057009
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 01:22:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=19MkWG0OHq3iuy1pxsE17MAI
	lcD70cm6euhfGg/Aln0=; b=GiN7jc4sPOQ+hKBNNRyF+Y/x7ejsevvat8Gmkk6n
	kTDgz1VXjV97lrxr2z4wXnxE4MDxGrjh+LnVflguuO4+Gg/WmnCBIA2jgOar2IuK
	i23tnTOtQ1c+HpSPZrVf12lA93+UU0lPY7dW9LCc3FASgKyAGbP9JhdbAly6eu+O
	5+mv68Gt7Gr2xLoko4hM/mJDKvVEvyDXlvQt3GDTzJOE92qf5iKN5ojlQDIs3lt9
	Uud2NR3CrCwOKuJpRtE/90Wc91aV9YMyM6KELm0/ctwnKy05JaJYb14s/v5lJMrG
	2so2l8oKeMqngADv4L5oI/cZk+aBfY2K1U36M5b8HIDjuw==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9k6y1kn0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 01:22:41 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2b7ef896edcso617425eec.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 17:22:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770945760; x=1771550560; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=19MkWG0OHq3iuy1pxsE17MAIlcD70cm6euhfGg/Aln0=;
        b=f4GJFPZKIegNX9pqbv4oBmqewMiKHlh2OLe82D5p7xQj6hkLi1RlPZPgYWNpjD8Q6s
         2cyohCNiPIzjgnu41ZW44K7izOVDB4Yk/PxLvuQ8mFJbx3V8BMWVwrpH7hBggLZ99Ca9
         vc95b8jO5vitVeEQAf4oRP1IWqtZhuEStpTykFxYzPIbEen0ac9cDgLyosINiGpFE/HN
         ckVwzLcaXhGBAELeY5sFjulKu1uWP4e2cLUMXqHumPHCLqGgHtyNAto+tSdcNtCN87eS
         LnVfBQbB9xR08k79cGpzB1COPA01wa0xvZMtSLlp2sgKNjK4qjuMj3hU22lpqL8nRvsr
         sQGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770945760; x=1771550560;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=19MkWG0OHq3iuy1pxsE17MAIlcD70cm6euhfGg/Aln0=;
        b=mPOZzUlhvGojNF7/kbg2vxYfYFKvLh8C7UQs67YNlw0cMZcCv6FoW6fZ+tiWf+gi6T
         n/ZUTml/LJHTVSOxdoOgzusmiByrlMyRKnrLCisJCBOVa6dhXbBM7G60cU0RRKHoEjdp
         RiHkWUiT/27J4Nfq2iOi8sNNp0P2YjBsyZXi+B6TYztl9Ne4kd6BZk+/RS43ItLxpWel
         siHuQVe/TJ8TFnI5R5vgiJ/bDEIZQ+d+lTUt1/d3Ygnj3LlSU/QP/hcGqimFTOz9KjLF
         OH1ITu6sdCztcnLQ1c5L+9baZLw6iK/6Ei2asmGkoSAiQpxRwUK4IiR1FeBdVDOnM0rx
         2T8Q==
X-Forwarded-Encrypted: i=1; AJvYcCU1W1OLD2Zt5iz9ydSyHXSA2vhR/Fk4j6RA9TOaakVMV6bGXP/idYfi8Uy1vNoysrAglHfDUYgp4mr0@vger.kernel.org
X-Gm-Message-State: AOJu0Yxpga1ZBQHOZYeVPJ18U8EcTjSGiPezdrI7a3+GixoTkUkljU6S
	6LEEFtcZo5qqpBZ7G87oiokKJZFfjRA9UshYiZeUBlW+dTo4kr99NBxLc5VuRtvbirT/ABnCs6w
	wZrPPknMerGi4QUdu2fvpZffHyBesY3rdrmcL8kqN2ImeVtkcsw3luocWbyHZ2rvV
X-Gm-Gg: AZuq6aJyH+TFCvQmXPqHCByn2ZlKxtqOSEJl+z0n0e8s8M39NXMITQ8zTAY19kWFSpr
	w/q58jR8PjkRcDU9OOF44fSQGts47Meb/3owa0ehbgvO+3fFq+6V8Hwc81Ep2lZsDWgIQD93yyO
	LF7M1ze5GdBmQ1RX8fDSYFk+shb61GTN8zhDWJQKT2KHPRWIA2h9psfVpOnB+dw+u8c4nnmKvpX
	Ynp9dsnhGHz9vHGD3m8NAjgQNnddvzBP9t6DRt721qaX92q3Muu0aer987n6oLd2oa558sTUfiR
	+BXD8PCydBGBaAaP7TR80bj34yjlUwp8ZMbyjoLxJGz1kOcNChgakjlan6AzusdcuxgS91OGjAi
	SJFvBtWNVFQmWa6/pkGSOKnxtOd9VRTZLPG3wt/oW0p43ty8x5tnXlC1D8ophCvT/
X-Received: by 2002:a05:7301:168e:b0:2b8:6573:2d35 with SMTP id 5a478bee46e88-2babc42e1f4mr92362eec.2.1770945760209;
        Thu, 12 Feb 2026 17:22:40 -0800 (PST)
X-Received: by 2002:a05:7301:168e:b0:2b8:6573:2d35 with SMTP id 5a478bee46e88-2babc42e1f4mr92328eec.2.1770945759451;
        Thu, 12 Feb 2026 17:22:39 -0800 (PST)
Received: from QCOM-aGQu4IUr3Y (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ba9dcead67sm4637540eec.26.2026.02.12.17.22.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 17:22:39 -0800 (PST)
Date: Fri, 13 Feb 2026 09:22:32 +0800
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Subject: Re: [PATCH v3 3/5] dt-bindings: remoteproc: qcom,pas: Document pas
 for SoCCP on Kaanapali and Glymur platforms
Message-ID: <aY582M8dgOrKW39w@QCOM-aGQu4IUr3Y>
References: <20251223-knp-remoteproc-v3-0-5b09885c55a5@oss.qualcomm.com>
 <20251223-knp-remoteproc-v3-3-5b09885c55a5@oss.qualcomm.com>
 <20251223-furry-mighty-agouti-a222f7@quoll>
 <ae532ff4-1a96-4dc1-9fa0-81305624c9c9@oss.qualcomm.com>
 <f4ef4a57-4192-4dbf-939c-46efa13c0391@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f4ef4a57-4192-4dbf-939c-46efa13c0391@kernel.org>
X-Authority-Analysis: v=2.4 cv=NsTcssdJ c=1 sm=1 tr=0 ts=698e7ce1 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=SvtFGoktTUcKB-mbNKIA:9 a=CjuIK1q_8ugA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDAwOCBTYWx0ZWRfX8Az2e0QjMlMt
 f359N1x0iGzq6Mf8XfHhhNvv+hIzT49TwaNb67VR7OHzK9nTt57koU09WM5CIxeyFso/ENGcnHN
 YceGGoI62d75DTCBrVSu+yynvwrvfFB9a2y5JagNwJyo9miVDfOcSMlkoapVl/kSbLh8ff2xU//
 OvYhpuv6W35rSZiRasQt4FToTYfoOOF2bO57Ou3sorzBftmwAGwKEHyS5CvCQTOwvHCcfcPvm1q
 jvefAvKq5ORkPZXN1T0Q9qLr1XQ4h49fOYCJNsZnWqofq6HsudnPdnHEt5JrE24Ui+ZI00pM9MB
 y/cATJjFtkKLO/W6gCdrcLyAIWrfuvJ8SVrajdJPtm68LC0yxqfFF2YCxo7p+63Z7QQl7NZMMcq
 an0wq/E0QJslVYUrmUh9+dirmMIdXEGt+BpP3vTaGiwefucPwKfGTFr3uY5b1xYOaRJrRFkOoHW
 on0Kta+YnmqHdCAxyrw==
X-Proofpoint-GUID: UAsl0Zp2j1uWE9W4Wh2N7Jkd2Ccllpf7
X-Proofpoint-ORIG-GUID: UAsl0Zp2j1uWE9W4Wh2N7Jkd2Ccllpf7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_05,2026-02-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 adultscore=0 phishscore=0 malwarescore=0 clxscore=1011
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130008
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265224-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengchao.guo@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5F609132404
X-Rspamd-Action: no action

On Wed, Dec 24, 2025 at 09:34:30AM +0100, Krzysztof Kozlowski wrote:
> On 24/12/2025 04:16, Jingyi Wang wrote:
> > 
> > 
> > On 12/23/2025 9:29 PM, Krzysztof Kozlowski wrote:
> >> On Tue, Dec 23, 2025 at 01:13:49AM -0800, Jingyi Wang wrote:
> >>> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
> >>> index 63a82e7a8bf8..149e993282bb 100644
> >>> --- a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
> >>> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
> >>> @@ -33,16 +33,22 @@ properties:
> >>>        - description: Handover interrupt
> >>>        - description: Stop acknowledge interrupt
> >>>        - description: Shutdown acknowledge interrupt
> >>> +      - description: Pong interrupt
> >>> +      - description: Wake acknowledge interrupt
> >>>  
> >>>    interrupt-names:
> >>>      minItems: 5
> >>> +    maxItems: 7
> >>>      items:
> >>> -      - const: wdog
> >>> -      - const: fatal
> >>> -      - const: ready
> >>> -      - const: handover
> >>> -      - const: stop-ack
> >>> -      - const: shutdown-ack
> >>> +      enum:
> >>
> >> No, no. Stop doing random changes. NAK
> >>
> >> Now you remove strict order (see writing bindings) and claim every
> >> device like SM8550 ADSP PAS has any order.
> >>
> >> And it is now de-synced with interrupts. Read writing bindings - this is
> >> clearly described there at line 90!
> >>
> >> You can only grow existing list.
> >>
> >>
> >>
> > 
> > the interrupt for soccp is defined as 
> > "wdog","fatal","ready","handover","stop-ack","pong","wake-ack"
> > while other pas could be:
> > "wdog","fatal","ready","handover","stop-ack","shutdown-ack"
> > 
> > so grow existing list is not work for this,
> > 
> > In the v1, got your comments to adjust pas-common.yaml for the interrupt:
> > https://lore.kernel.org/all/861b6ede-f168-44e6-85bd-10cf04dbcec7@kernel.org/
> > 
> > and in v2, interrupt are moved as part to the "allOf" with if-else and
> > also got NAK:
> > https://lore.kernel.org/all/20251030-venomous-apricot-falcon-b3fd64@kuoka/
> > 
> > Could you please share a example for us to understand how to maintain it in
> > pas-common.yaml, not define if-else and has strict order at the same time?
> > That will be very helpful.

I guess something like this would work?

  interrupt-names:
    minItems: 5
    maxItems: 7
    oneOf:
      - items:
          - const: wdog
          - const: fatal
          - const: ready
          - const: handover
          - const: stop-ack
          - const: shutdown-ack
      - items:
          - const: wdog
          - const: fatal
          - const: ready
          - const: handover
          - const: stop-ack
          - const: pong
          - const: wake-ack

> > 
> 
> Can you read the docs first? This is not a ping pong, where you keep
> sending till it passes the review. If I provide you idea, then you will
> send something whatever based on that because you still did not read the
> rules governing bindings.

Krzysztof,

Feel free to shout at me if my suggestion is not what you have in
your mind :)

Shawn


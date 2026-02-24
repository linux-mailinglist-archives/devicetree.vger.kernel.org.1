Return-Path: <devicetree+bounces-267894-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sIKALiafnWnwQgQAu9opvQ
	(envelope-from <devicetree+bounces-267894-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:52:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D66E187407
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:52:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0C68F304909C
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:52:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 321B339B48A;
	Tue, 24 Feb 2026 12:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c5JxUtrV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UqPikd77"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC7A839A81B
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 12:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771937534; cv=none; b=ai8XySxq+3MRrvCj6aa3JsLSj8HCRt9s9xvwnOScxovcv/keQ4fsZpKgH6GvRzmsDtVk+/wGFShQndYKU9FfDd8GXAzsX1GBvizrjiUlohLk5kL1muH21903OiBUsQiwHolipNbm6dZxs1AkDqGVRo5nJ1WOubZWkjz1G+VZBB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771937534; c=relaxed/simple;
	bh=e0fsvBudio5HxLSOZQn3Lec8MEFgfZUG6+VnErYT7Lo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tojRtLnr7QU9cL5gpiXpd7frnMLzm22TMSvYmbkbLKwLkxYTYpZHGdCX/Je4t9K8tUQjV/6EiYmhW8UJt09O3s8eeYUWy3q9sfI9Yli1vNkOyfbgQZaAwPvWg/IkZZwrP/GbG0XDShs6ixt+fHz/jV5NHOI+WgmAulqZOHnAl6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c5JxUtrV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UqPikd77; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61OAFaEA2006547
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 12:52:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5wXaaTE0K44G/RbHIlQ72sYS58NboIdqrv/MSBFut+8=; b=c5JxUtrVcZEDo9ID
	D5H2A1zsOq6PZk7Ug+kb5p7ROmb0FJ4NRyxf0RPvP46w5cYV1AxcIrS8GG4Qc1ys
	S+qyyAF1eIcMSTJivZ9byI0FOk6gUj26cykCJIQLQJFUj98FIWdcVEphYPGSF4nm
	7D26hogcZFafj2RZHapmFmGjRQEmTaWNbKHvN9tyIZgjs6HIN/7vs6Mk45ZAmT4s
	nZwa8zt0kPzZhZYQuSOMfq8UWrQwaZgZYmJzLD5uJzw3xraE2j+dU9JUDT0Gxn6e
	qaRyi7dvf1KlZFHDwZ9mIvprbkyMn7yfmAUB6uDn4eqR0l4HSGnURKoEPnKh6wd+
	xAnknw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ch4569h00-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 12:52:11 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb4b8e9112so485207685a.2
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 04:52:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771937531; x=1772542331; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5wXaaTE0K44G/RbHIlQ72sYS58NboIdqrv/MSBFut+8=;
        b=UqPikd77mEgUDF8Bp5MxMRCR5Y1o6vGVnZuYJoYYmPQz8LBvZEA9ldLHi063r/9dmn
         wMul0W/7gWwd3TH5yykb/ylUdLdI5feUkJ9LLdvSHtXyOunTzXCViCu7zBnstNJI6MUV
         VFLoWB5lk0jy4tnwT05OXYXkSnpQR3gubxb43MyqZZUHuYG0g97OMzJDxWkCIGbMbKoA
         nRYZTLzqNFHL10WbaxtPES8IfwG+8Zo4wUav73ITvIBYyYLnehOdKb7pguXi5RZ/vCDH
         oLlydco8ppZW8s7bINo4Spn4oLb6KJTlJHLfb/lKppXfbO1gSv3y1yWfKas39SuSJooO
         BV1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771937531; x=1772542331;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5wXaaTE0K44G/RbHIlQ72sYS58NboIdqrv/MSBFut+8=;
        b=jUIOIwJVucvtEwGMsMWbuuznqeF5yf6fLiqqZv079tV3oxBIWJhHfDQ+dqWSPL7vvL
         zF+Mhmmy6LK9+OTuqf7bP6uUR4hez/PwAubRHQZP6uxSGFT6IXNtJu+BQc4xV6BgThvJ
         T74wI6yJI8oJGo2ptVekkHyz3nctsCL1XGj0ra8kWSbin4IKWupcfyOgdzvdnIlcC6Al
         JjeNO4duPcfLArwDSMafY/W5+OMHX9iu9ojf+aip5LxMHpkGJXJiRhHp3XMO5fV79ru4
         NWR8hhwkuSa5/4Eqf7FDqqTmvTNWIkrOLfYMtrFFfGzyYG0zSes+M007YYpaIv8HJpjs
         v1cA==
X-Forwarded-Encrypted: i=1; AJvYcCVaNGUIU754yJ05GGNyemWESdlT2V3zMyL9T4SW85ENfXONCNznm98ZMGGEJ7oxjhq5Mf1MpDPT11Jq@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+p/uC12pvu0Sfk7odNnJec4xgcFoXl6NEO9e+SZF4A64EuiRA
	K6yfe3p0H46K1aIy4zeEmFiuHyM1/IF7J8BkAcnSrpGkqEt9lPEQIiKcn6UO00J1iOP5jmWN5KZ
	sOgQT3m5kqmez3YNlhBLI2I0IE/34LYuXzoecUxNDWhN3nSZiB/BZKyJnQV/LOKeV
X-Gm-Gg: AZuq6aIC0BsQNO9LfkRvrp4iXoP9ZLttfJK06wobf9+PmBnpktqDlHVLj8Fhxo3RRaz
	+pD3RhaeFAlLgb0BL3wzRtoSupRfl9Zjz65/QuVJJOL0wXmMyptcrzrxa+19JuTfcjH47zx61/l
	rOpisACvRiUYqCfXuT6gFtlGsomk5/2Yg8YYGZh84RxfW00FOkaQqy15sLYOyITJfmtve8W7zfp
	6O4G5voyS174Iz1XgOMJdC9Acavg10i7b9RBIXeUdx7kUg9EjAM3EvIFnUdba/6A6OnOdWJKkSS
	SocTtP4OcEmD/IirMXBX1ivEoViJg6J3cBr/oOx/4WQdnMn9Yb7sKhMxmavtf8xw80TVAhX9ABx
	k097jGvej4gAMCmqgfYFKcRXZy/LOF+QXjjQT0FilG38SXg/CxFOFUnAml5iQNg34nx6nUizNKl
	ZqNln7HZ86NdPjZj5E2/IGAR9yrC1Pz8jX5PM=
X-Received: by 2002:a05:620a:1aa6:b0:8c1:ab1c:f2da with SMTP id af79cd13be357-8cb8ca89d86mr1550575985a.70.1771937530710;
        Tue, 24 Feb 2026 04:52:10 -0800 (PST)
X-Received: by 2002:a05:620a:1aa6:b0:8c1:ab1c:f2da with SMTP id af79cd13be357-8cb8ca89d86mr1550571685a.70.1771937530095;
        Tue, 24 Feb 2026 04:52:10 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb0b8f0sm2143851e87.14.2026.02.24.04.52.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 04:52:09 -0800 (PST)
Date: Tue, 24 Feb 2026 14:52:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, andersson@kernel.org,
        mathieu.poirier@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, rui.zhang@intel.com, lukasz.luba@arm.com,
        konradybcio@kernel.org, mani@kernel.org, casey.connolly@linaro.org,
        amit.kucheria@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, manaf.pallikunhi@oss.qualcomm.com
Subject: Re: [PATCH v2 2/8] dt-bindings: thermal: Add qcom,qmi-cooling yaml
 bindings
Message-ID: <wuwwacgunqbtjcgj3ai3bznewc3ejijve7wjonen2j2kgsokse@v4uchehtz6sf>
References: <20260127155722.2797783-1-gaurav.kohli@oss.qualcomm.com>
 <20260127155722.2797783-3-gaurav.kohli@oss.qualcomm.com>
 <20260128-whispering-caracal-of-respect-a26638@quoll>
 <36706481-2549-4716-8e6d-0e4db42591a2@oss.qualcomm.com>
 <546faeda-d896-403c-a449-5c9b0cd7159e@kernel.org>
 <17474333-bb82-49d7-bc04-45ab21095c38@oss.qualcomm.com>
 <ae4c1f7e-8f4c-4ce0-a6b8-bab29984e693@kernel.org>
 <c6136314-5bdf-466b-b19e-43062fb11150@oss.qualcomm.com>
 <e6679f94-2648-4d35-80cf-d3f823f9dad3@kernel.org>
 <4f815a0f-a815-4b77-a4cf-a4b18e776eab@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4f815a0f-a815-4b77-a4cf-a4b18e776eab@oss.qualcomm.com>
X-Proofpoint-GUID: KuFYJh2SkfV_iM0xN1fQenYufj1WtEWs
X-Proofpoint-ORIG-GUID: KuFYJh2SkfV_iM0xN1fQenYufj1WtEWs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDEwNCBTYWx0ZWRfXwCyFUh4vl4fV
 U1mWjgBIPSYUPcPCAJGKasnuaV1rs32D+oNPAG1JJslJ5XDW0PPSb28IOcqB1ZjwpzDdhVZzAVq
 uo5dQWVhtyDKr9lChgjN4y7mrqsCsrJSVoki2pGt0Z0Dl+Wj9brW7/a3YB0r/yCo5czVf4n99lX
 2msBN/6FamjHZ/L/XbO4L4cC0MGGXL2F5tYqXrJ3HZLSpKPATNwQrQNXenaF3m/JDagycHASZyX
 io0N/kNZCA1ijV5aRdUwtrqa0aKB2j/YLw+0O99/k/Cjl3JdGOqdxny1zWZnQs6EHCWJJgz0Z+z
 AcP5CML+g8bjqnfpWc9U3URyFrXSpDOsPppRodBbejLlT/g2Xt35ZgYD7FBcbRqjdkTnbQpNnuI
 460JI+/BjKaxqagJdNe+oiS3TOJaSj8wUNpQrFPYonP2TLWWSZ4IzAdfTZMfgbqDb+vtDHsS1PI
 DnJ+/BaNRO5grvEn5yQ==
X-Authority-Analysis: v=2.4 cv=J8enLQnS c=1 sm=1 tr=0 ts=699d9efb cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=lDahQbM-NyokND_-sVEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_01,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 phishscore=0 spamscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240104
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267894-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2D66E187407
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 05:39:42PM +0530, Gaurav Kohli wrote:
> 
> 
> On 2/20/2026 1:14 PM, Krzysztof Kozlowski wrote:
> > On 20/02/2026 08:29, Gaurav Kohli wrote:
> > > 
> > > 
> > > On 2/11/2026 1:43 PM, Krzysztof Kozlowski wrote:
> > > > On 11/02/2026 08:37, Gaurav Kohli wrote:
> > > > > 
> > > > > 
> > > > > On 2/8/2026 3:36 PM, Krzysztof Kozlowski wrote:
> > > > > > On 29/01/2026 13:06, Gaurav Kohli wrote:
> > > > > > > 
> > > > > > > On 1/28/2026 4:57 PM, Krzysztof Kozlowski wrote:
> > > > > > > > On Tue, Jan 27, 2026 at 09:27:16PM +0530, Gaurav Kohli wrote:
> > > > > > > > > The cooling subnode of a remoteproc represents a client of the Thermal
> > > > > > > > > Mitigation Device QMI service running on it. Each subnode of the cooling
> > > > > > > > > node represents a single control exposed by the service.
> > > > > > > > > 
> > > > > > > > > Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
> > > > > > > > > ---
> > > > > > > > >      .../bindings/remoteproc/qcom,pas-common.yaml  |  6 ++
> > > > > > > > >      .../bindings/thermal/qcom,qmi-cooling.yaml    | 72 +++++++++++++++++++
> > > > > > > > >      2 files changed, 78 insertions(+)
> > > > > > > > >      create mode 100644 Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml
> > > > > > > > > 
> > > > > > > > > diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
> > > > > > > > > index 68c17bf18987..6a736161d5ae 100644
> > > > > > > > > --- a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
> > > > > > > > > +++ b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
> > > > > > > > > @@ -80,6 +80,12 @@ properties:
> > > > > > > > >            and devices related to the ADSP.
> > > > > > > > >          unevaluatedProperties: false
> > > > > > > > > +  cooling:
> > > > > > > > > +    $ref: /schemas/thermal/qcom,qmi-cooling.yaml#
> > > > > > > > > +    description:
> > > > > > > > > +      Cooling subnode which represents the cooling devices exposed by the Modem.
> > > > > > > > I do not see the reason why you need 3 (!!!) children here. Everything
> > > > > > > > should be folded here.
> > > > > > > 
> > > > > > > 
> > > > > > > Thanks Krzysztof for review.
> > > > > > > 
> > > > > > > Each subsystem may support multiple thermal mitigation devices through
> > > > > > > remote TMD service.
> > > > > > > 
> > > > > > > Because of this multiplicity, introduced separate binding file.
> > > > > > 
> > > > > > This explains nothing. Subsystem does not matter for the binding. My
> > > > > > comment stays.
> > > > > > 
> > > > > 
> > > > > thanks for this suggestion, we will use qcom,pas-common.yaml to define
> > > > > bindings and avoid creating new file.
> > > > 
> > > > I asked not to create any children nodes.
> > > > 
> > > 
> > > We have multiple cores within a subsystem(cdsp) and each core has its
> > > own independent DCVS. And also we have dedicated TSENS sensor placed on
> > > each core within the subsystem.
> > 
> > Your own example in this patch had only one device, so how do you
> > imagine to convince us with incomplete or half baked code?
> > 
> 
> Target of this series supports one tmd per remoteproc, due to which we have
> not posted examples of multiple tmd. Can i use dt binding example sections
> to describe all tmd's per remoteproc?

I think you have spent more time arguing that you this series is limited
to CDSP than would have been spent on adding ADSP/ SLPI / MDSP support.

> 
> > > As a result, each core requires its own cooling device, which must be
> > > linked to its TSENS thermal zone. Because of this, we introduced
> > > multiple child nodes—one for each cooling device.
> > 
> > So you have one device with cooling cells=1+2, no?
> > 
> 
> This will be a bigger framework change which is not supported, i can see
> other drivers are also using something like this multiple cooling device
> under device node, below are few examples :
> 
> ->Documentation/devicetree/bindings/hwmon/microchip,emc2305.yaml
>   In this multiple fan child nodes are present.
> 
> -> Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.yaml
>   In this multiple child nodes are present, like heavy and light.
> 
> Please suggest if our current approach is fine or you want us to implement
> in some other way.
> 
> > > 
> > Best regards,
> > Krzysztof
> 

-- 
With best wishes
Dmitry


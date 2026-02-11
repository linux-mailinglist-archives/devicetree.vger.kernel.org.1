Return-Path: <devicetree+bounces-264585-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNztB1fli2kVcgAAu9opvQ
	(envelope-from <devicetree+bounces-264585-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:11:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D73D120B61
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:11:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 15291300DF5D
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 02:11:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F4FC2FD1A1;
	Wed, 11 Feb 2026 02:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JNi4s4HY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PyEk7eBA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412A72FC007
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:11:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770775891; cv=none; b=pXj8Q8RGJ/wIuWy82whEDikL3mbLOc3uTWkk+ZtJ6Vdcq3K/IJQpwRLECt/ZPr5ETiJ7rSViG54SqxLNJJdAocdsajQLLftkhncxs5nw7j5M3jbX3yr8xsbScdTkkyMfHIdA/7Q5qti2Lqa6RjOF8MlgvHRwClGSfSn63JkdBT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770775891; c=relaxed/simple;
	bh=8KmGqu10I2UcckwyPpRC8tNe/8eY+hosqLQUnpOWz2o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JZ6LoIM8LUHxGM3q9pkwm28zsNOtMpDqHOxmqQ9UNXOgcOUb/9+Y2xASgpxQR5nycGJNpy8DNh1xLVZAGI5rDmNybA+xHnk/jcjq0PlWTwQBF7akPQ76dxbry7rI2c0udrl/uE1+0SuyPWEMVpObr83Uvr52o5whVxbVsnWKmHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JNi4s4HY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PyEk7eBA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61AHU8Nb3204751
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:11:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rwAUFN3fNP8Oixckb9rh2aw5
	H+/4LllRHz6cpH0F5RM=; b=JNi4s4HYu9+2mYBSTf+/RQnDhUPEtIlvSpaxQomj
	QMBZYa+9aVvAGYAA41QxvFj88VYf5JMOT5Nqp0z6OsB12T0DXoh4wOsL3t9ctsWt
	n1ukx9BUdNLsQClg6n42y4XK8ntSFpShdPtQLGOFHgXQTUr38inOufus0hYDuGLb
	2gk30O9O046TDYehLoTZSgey9QsySrjAoY0sX3INtaMvUXftv4Ha95Evo7YL3JIM
	v85zhT6Pwek7Tc7OSgFjaMm7XrpAGmn/JNzamEhGdv9JmNq+Ve0lyfQwJvrmERTs
	QTqtUv6q+I4tbWedmmH3DtZL6RpQ6SyQl8sbbkeQlwj7Rg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c894g1g7j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:11:29 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70b6a5821so1492408085a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 18:11:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770775888; x=1771380688; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rwAUFN3fNP8Oixckb9rh2aw5H+/4LllRHz6cpH0F5RM=;
        b=PyEk7eBAnaiAehZY0fKK2ZzVhCn/EWt2sFFmoqbYrVTFxpG2f8sI5CVidtOcs+vgKq
         aLvZdfpc8wFixw13e2TeT68YsGo3v5PwU+4Ev7DHp07y0nY2qMTocjIv0PYpBwixerIE
         r4msP/586BVAXMrOLI6O65vsTIS3zwizF8xZ6N31aQ4/yAwo19Bct1GtiCRhA9bV8pfw
         +CDceJIXnLK9rTB5C37H81rgv7aLxUaLHywKiWetbQ9gL5ayHD+76HPUfEO/5PURV7pV
         b4FmP0joad79JHahtBa1iUbo2X30YBRFTYkHBZAuS5/ZkGpRLOfDPKFC1ewyGonqcqEC
         DJjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770775888; x=1771380688;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rwAUFN3fNP8Oixckb9rh2aw5H+/4LllRHz6cpH0F5RM=;
        b=U/b6ZODZLX93wcVd76LPYQt71ew8ufS6W2B+Gc088lM0BmQ+c8ue3wiBPCDSyTxAg4
         KlU/3tPYTV3UTV5VnUWi6TV3vIIfmIEBrzvQ/bJkppeMBxhPgmKG++qj/WBf+e5BPM6N
         m4FSQvNPluterupmW8kPJFS7Pp2MjdThVY8TmKoZJiPzW5+Peg6nv6Tvm4AWreVO9rdD
         EYK80BY9Jt5yu3+YAE4mHyUHkhvByoPwRaNnNd+UT2A40/+w2pJHQykaw4DX8vtZmgSa
         3jK07b1kDjILEUicaWAryExwGhQe8YtkmhvjBSP8MU/Pixunv+xl3EA5d3/Wmd7Gvq7O
         iWdg==
X-Forwarded-Encrypted: i=1; AJvYcCUj8vnxaXyCex8MpIg372uvnlsmKz2tCzk4ZXK6KVlvhHCXwkFJv5IxopZxyEErv6TKB7uFpYEPY9wU@vger.kernel.org
X-Gm-Message-State: AOJu0YwwCyDBNFeyqodV2l0vaNCCuGATVUrMVp90b2LPEmbYPQRkHf57
	i1SNN+JAo4mRSDsz9pA/Ea90f6D1ORCQHOKAh5HbMzoijwG0nXwcvyvVhRWxjcompidNWQCK6AR
	FjDdJrhZr8kDW2UH06TrYkGPGIFW35/8ftBp1TOl8cSTotIHVm9uVAPfunyH0YBwr
X-Gm-Gg: AZuq6aJrWOeNGk+LDC/9Vg7T5ZsHR9Q7MrtfB72YIBIZw4mrBJYOnum+KAosyGRXWj8
	wTgJL5JlKabhT0nhJHCR+gegh26KOhjgH3NjKDCtWVHM7q1pABbczsXfZhz7VEdShGWv0IufB8O
	cn8rTjhdhnC+CI9eWuM2fp+tSKr8a+uwV/z9lR/tWJJVZB4bDIrI2NXo6tWTBFJUVE3l0cppUUW
	0gl6WiYi28x+7ogjG+3gSk3lIyl2y6Cv0i3crpmdVu2bDBtxTmn+n5kSG4unWecW0f8hVZygLPs
	Y3rLT3j2LepY0HX3mx6zH8X+F57DQlnoyqLPiMfecm74rMdR7tT7s94zByJrbuVgmrneCnZusI0
	wtf35YWQZPe664dvn97HhJdfbEDktJ2hXco7EYP4pShfSCvG0fiabnl7GCuaVi1SMAIJ4xjSupe
	7JgTjUFlmeQnTSdOJQFlLDUQKROK04HJQJKbs=
X-Received: by 2002:a05:620a:190d:b0:8cb:104b:bef with SMTP id af79cd13be357-8cb2ad54a5amr28602185a.88.1770775888576;
        Tue, 10 Feb 2026 18:11:28 -0800 (PST)
X-Received: by 2002:a05:620a:190d:b0:8cb:104b:bef with SMTP id af79cd13be357-8cb2ad54a5amr28598285a.88.1770775888057;
        Tue, 10 Feb 2026 18:11:28 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-387068e5f35sm565761fa.22.2026.02.10.18.11.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 18:11:27 -0800 (PST)
Date: Wed, 11 Feb 2026 04:11:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Richard Acayan <mailingradian@gmail.com>
Cc: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Johan Hovold <johan@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
        Nickolay Goppen <setotau@mainlining.org>
Subject: Re: [PATCH 01/10] ASoC: dt-bindings: qcom,sm8250: add compatible for
 sdm660-internal
Message-ID: <yxrhmblavwkuhfrfgskujs7tz7cykojnqnl2mfrf365lhdem35@bgqwiaft67b3>
References: <20260211020302.2674-1-mailingradian@gmail.com>
 <20260211020302.2674-2-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260211020302.2674-2-mailingradian@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDAxNyBTYWx0ZWRfX5KYoTnceGijF
 xCTCjSjfZDn7HVsFUvjVyb0E0kqYy14VxSBJR+eyq8rGjaMBbTuAXTu2e4wy7zs331Kb0+SYEA6
 4kWZRSVQTElO4H3kByq/0iXgj84UFokfusZsOr5gLV1+OF+PghCATfd2xh4IO9INX81MJ4S7rx5
 kFj0qLDQFRN7i/RGzrjxDoz3p+Cbm/W3uFwls6GPQM1761besciE+AGBRJjV0rIaQW9vX+xKrPR
 w8VnqiC+Yb3qoUoysN9U6AuHY8/GyrQLy5ikRGJqI2oG84ESvx2dggvC1OjIul12u8/GOhEIBW6
 qzvH75C0wSlNFnqYJkEdE5ejDsKfvhwVkNexoiNoy/iCU21iNlKAUlQQO+f3KyHNwVlwxPCPQdw
 n0bv4OlFct8AMwHPMX94DYCbi42smGHhrfEqgPt1o9Ts2AX9U5DsrpjLLPWX1iD5TIcZIqP0Jb3
 fhtXH716kXJvPuqARiw==
X-Authority-Analysis: v=2.4 cv=R64O2NRX c=1 sm=1 tr=0 ts=698be551 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=OuZLqq7tAAAA:8
 a=pGLkceISAAAA:8 a=Nn-6Z7DYh3BI_mgflx0A:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-GUID: Li_5S6Ei34bY_H2yy3JIqZLQHRfGw7G5
X-Proofpoint-ORIG-GUID: Li_5S6Ei34bY_H2yy3JIqZLQHRfGw7G5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 suspectscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110017
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264585-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:dkim,mainlining.org:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,perex.cz,suse.com,linuxfoundation.org,quicinc.com,vger.kernel.org,mainlining.org];
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
X-Rspamd-Queue-Id: 7D73D120B61
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 09:02:53PM -0500, Richard Acayan wrote:
> From: Nickolay Goppen <setotau@mainlining.org>
> 
> Add compatibles for sdm660-internal based soundcards.

Why is it called "internal"?

> 
> Signed-off-by: Nickolay Goppen <setotau@mainlining.org>
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
> index 15f38622b98b..ad5add422c4d 100644
> --- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
> +++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
> @@ -44,6 +44,7 @@ properties:
>            - qcom,qrb5165-rb5-sndcard
>            - qcom,sc7180-qdsp6-sndcard
>            - qcom,sc8280xp-sndcard
> +          - qcom,sdm660-internal-sndcard
>            - qcom,sdm845-sndcard
>            - qcom,sm8250-sndcard
>            - qcom,sm8450-sndcard
> -- 
> 2.53.0
> 

-- 
With best wishes
Dmitry


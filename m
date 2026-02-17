Return-Path: <devicetree+bounces-266104-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CPeG3dZlGkXDAIAu9opvQ
	(envelope-from <devicetree+bounces-266104-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:05:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 937A014BC0E
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:05:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3B6FD3001CE6
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:05:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D16093382C5;
	Tue, 17 Feb 2026 12:05:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q2od4Spr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YWBuoyIk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA38E337118
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:05:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771329904; cv=none; b=JQuGQ1xVSa4H/bwTXttbjbZyvp5bhJu8XzJDNCWro3Y9IDygbfLJTJ8/XpeOnlpHKfSXFlTIBWoD3i9zlzFC9OohnW0i3xpa9ve68AERcIQdbnJPobqOQJHXeaEtj3pTy50q6T5RsDeG6ktBfQN9psbuLNHqBESxgVwP7swAHAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771329904; c=relaxed/simple;
	bh=aVUGa3RY796+baDvlhpqGowjESPg44gTPp21C56l+gw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sTQtEu9mlPagx0NuNmOCv/qLVMLnWuaedrqzCIgITwTooge7KQTsD1QkohvJwLw+lWmYDzUPStkEyNe11J54ZqvcNDRaTLq7khJSxye9G/sKVI11qy+pjnSzxXxiWP0nweXCklu+SmjcPM7r8q3iZjPE4GSSeV/uOyCq358Ej2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q2od4Spr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YWBuoyIk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HAcsMg598036
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:05:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WN5A1Uh8FQbkVezplAg2+KPH
	LHpsIMxAUayv8oRBN0g=; b=Q2od4Spr7BKqk1uarSY+TBtIpKjNszSwilu9idhj
	WP9wPjOmr8vnvvA4VBNF55S3+B8ro8frtgHzTFMrqkuIFdhsTddPJOcureeoTSf2
	YeW8gJ5EchSqPxZcLYs57L7K/vEImRd9gR+Z+wVGVtBsYMHe8l1Akt5CgpH8tj2q
	GBZkICyotCFzOe/HQODrfJl3rS0Qfj26Vs1ooTwCX5HSZkLuqW/yd2gtgmLXlOpg
	hKGdf14Wofv/S6R5NAbh8A1Fkj4YQ3LD086SU2UaxucLb+WUF9RrEL0rycLy/Rj5
	+EHZPNx3V2cpE44ijH299VrAmwc/2MYP4VjvMMD4n9/Rtw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cca361qed-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:05:02 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb0595def4so2948397885a.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 04:05:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771329902; x=1771934702; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WN5A1Uh8FQbkVezplAg2+KPHLHpsIMxAUayv8oRBN0g=;
        b=YWBuoyIkPvix1p9CnDQdgau5CaG9As8WmcU49uXe1YZ7m+5asoyiWEu4BnMUj8XRku
         qNXgyuevUS6sDV4tekC7sgXUjICUYbpwKhLubvNd/Za8MRMW5bBUhVAHPCBBqfCHpBaJ
         whKz5zySdd6RtfuQMhGF9rdDhoZ/6PKy+QChGIBQWFPo6lIiljVtK8QV9BGnRP8205/C
         nAbOgwWX/zqWykDSTzXues7nvQLTMizZBjvU8yN3dMVA2okWplwBgO0sKs89O2XvGqgC
         TV3+k0SfY7Qh3YqrNxj3GUy7zB1a/ZFwUGZ84idec9WyAOwF8puqlG8hlEhSXL+bDMA5
         WScw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771329902; x=1771934702;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WN5A1Uh8FQbkVezplAg2+KPHLHpsIMxAUayv8oRBN0g=;
        b=OMr5IpdYIWOmvWxVDP7tFO/K4DoMnlAIIlB2bKAsGsoErFRLugk3m5i3WLtlIELnLH
         uPTYKOsj/ZZunukYh76Ma0DzSphg8byycOx1l9BJHJ4XYvI/D999oNJvD4OwW3tXrU7d
         EfupQX40n0eFgUWwhnXw/pPlQaSAIWikFWvwboYuPORqNYKGC+ON9bEmmpEZrgm/KEX5
         xMA5zOmPLQpXFXhN0XRT+7ditPBld+OBKEMnstuGaM94k3sTwJLZYb0pvvaLgfDh27JW
         tcbwgD5NwJtnZGkD/fnXQfqJbI3CqXBJVsej+aiHiJocWg22qH9kfXEZ0abOetyoKa7w
         cnDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUmFQIWG2+drar7erc57RvD01EMlBRWTEIksaS8uwdOjmgR1DbtD0ETqrpflaEA/qzmrfAwcsar4Ft/@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5WQoLvpjlqy8aurwDJP/Pxt2HCNiImurs4c6NJwDqtzQJ0T9f
	0nSzrYkBNRh6G0OrGYHIq5625vlK6TkOI3enB7Tuz4lj43Dlw+8cGb3F2YYGJnj4k4BTKU5m5M2
	8SxzeKi0xGVeEpIpFIegCz1VIytqCCouwQy8qorP+9V0YxJwsuzCEV9fX7MW0LWbH
X-Gm-Gg: AZuq6aLez2Qi/PIGMD4NCorJ3s25KfyGK52MFE8Cqo5hZoHSj9AvpX14fbi448wW7dQ
	zC9+alHUkUj8VyPjMmJ5XjkDnlNOBw93txYvpa31NkBo/k5mP8yQ/j/7Y8AKbxHQXrO/aWPrwJV
	PpdYxZ+fR2hkrX7u4rHS4dy5wHWMiQwcHSSzCmLef+JXMijgR1y9IILWCHx5pbkRo7y/Hg5NVf9
	l0UEScIxhjXJqplGLQDSus9uG9Pul0rq3rsvlVFj3/4+3RDsr/MR08TVRNMv2JbQ/wqQJvgbX/5
	Xf+7RDXQzznZcg3lFPUcMrkV8Een7V5E2bX7k8c4IJpy6zRt3Y70PEXjt5ycThSlbNnyWSuF6e+
	UKZ9yk91GFYENlYJzuJv2qKLk+mvhwOnI6iHD
X-Received: by 2002:a05:620a:7014:b0:8c7:3ff0:d472 with SMTP id af79cd13be357-8cb4ac01da8mr1242525285a.15.1771329901907;
        Tue, 17 Feb 2026 04:05:01 -0800 (PST)
X-Received: by 2002:a05:620a:7014:b0:8c7:3ff0:d472 with SMTP id af79cd13be357-8cb4ac01da8mr1242520585a.15.1771329901366;
        Tue, 17 Feb 2026 04:05:01 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ac7d91sm34676995f8f.26.2026.02.17.04.04.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 04:05:00 -0800 (PST)
Date: Tue, 17 Feb 2026 14:04:58 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Linus Walleij <linusw@kernel.org>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
        Jishnu Prakash <quic_jprakash@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Subject: Re: [PATCH RFC 6/8] clk: qcom: Remove tcsrcc-sm8750
Message-ID: <gazyoguari56n6t6eaxbfvgv6hsc5jaqtfkhlshkbijsilfuys@cggmczqpzbq2>
References: <20260202-topic-8750_tcsr-v1-0-cd7e6648c64f@oss.qualcomm.com>
 <20260202-topic-8750_tcsr-v1-6-cd7e6648c64f@oss.qualcomm.com>
 <sxjrbxwi64ky6dcntpnnbi3y5ujtssz7uno22xiwiqjdhp7rxi@b2nsnmb74vnb>
 <270589cf-383c-4062-baad-d232f7eef3d5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <270589cf-383c-4062-baad-d232f7eef3d5@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA5OSBTYWx0ZWRfX0AfeW2xGbI3r
 r+U5TPWGsyp41Rj0lMmP8CG3eCFOx7fmaLfxpKqWqQw0O4x4ktIOjJxAzEA1HKmwnyvLnI0KWqK
 LIBx4glKktFr6kPKqoltlYYFvsl0YkUo3GmExUH113q70w7/RVJOkuwSsAMeLu4h2/sPUuBPDLD
 60nIhSY3axNeaycvlMU/2Qm32VTRe4H9EC9vJ7u+PV4jpIjtcLnBRtg15w+7AR5mxj1AMAACnLG
 rnxlwMov/hiTO+rYg/GD88p/bVYmVvG6PL88o/V0/pyu0+osUgX1F2vaCXCs5DiuU//mJRpXiEw
 PHfMgmn1UM+T6sH1hhMp9yNf88mdYQ88aVaTBqoRGw5YpB4nRfWrTn53B+/i2EyakpnVs5+l8HO
 p1cgGbg/6DW/toVMjwYiScGbmBODAsvcCOJYELjcWktyFtjnUsDilr6rFv6bc7crkCz3uOnAxnz
 PCZg+zNHy6AMT1aLO+Q==
X-Authority-Analysis: v=2.4 cv=b+G/I9Gx c=1 sm=1 tr=0 ts=6994596e cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=OsKXUHKqkhwHkHYPZh4A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: aE9eB_21sQAMvIKRmrBqoJjavWZ0sQFb
X-Proofpoint-ORIG-GUID: aE9eB_21sQAMvIKRmrBqoJjavWZ0sQFb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 suspectscore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602170099
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266104-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 937A014BC0E
X-Rspamd-Action: no action

On 26-02-17 12:50:50, Konrad Dybcio wrote:
> On 2/17/26 12:48 PM, Abel Vesa wrote:
> > On 26-02-02 15:57:38, Konrad Dybcio wrote:
> >> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >>
> >> This is now handled from within the pinctrl subsystem, since there is
> >> no "CC" block inside SM8750's TCSR, as the corresponding hardware is
> >> present within TLMM. Remove the leftovers.
> >>
> >> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > 
> > So bindings remain in then...
> 
> Yes, to limit the explosiveness I decided to reuse the existing
> ones.. I think that's the reasonable way to go

Yeah, realized that after having another look.

Good work.


Return-Path: <devicetree+bounces-263990-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yCL8Du3ciWkGCwAAu9opvQ
	(envelope-from <devicetree+bounces-263990-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 14:11:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A6F10F741
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 14:11:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6972830157E2
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 13:11:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9190F372B50;
	Mon,  9 Feb 2026 13:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m/3uEtQI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RREOBtSM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D425238C29
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 13:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770642666; cv=none; b=Pisgvely6u7TXaHs/C5bkAVHMczvObk0jlAJYaAkqBMwwG66GtcBhGDPV/7IhKWWUViPsVJkr4WPHU0dwx8sIGEZrt0/PPPCf77tkJaJKb0+fUK4UU5xigIXqBS11Rb+u5R5SyVVaWCBVLbxaXcO9zJab8lOCVBXucLJoemSwag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770642666; c=relaxed/simple;
	bh=ttosiTeLep3a/0yqYZODsLAArithrXWgifWuWEeKHmM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V52Ivh56lkuFfR2oVVhzcccMqg8ooT4OCZpqHcEANWn1pCcawbO4+tEzWOZAhXnK12yKnoC3XFnD5qtb6y3cYUMK9qHsiH+LycsKFbNIGdB2yoVC9OLpPTKN7TK1WiYPgSeizX1WX1rSTzE7Xf1GmSttduAzhAJi+PvI+gQTa2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m/3uEtQI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RREOBtSM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619AVqk31476771
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 13:11:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RM9D0erFU6KFIPXwqdXYSlNe
	Ku+Wim8uj//nd7mXEwQ=; b=m/3uEtQIilEqacPRJHC0is2psLVesjypc1dGofH5
	61JTO9WyIXj3hfNA6Zw2pwkzvqiqg4TlVswi8N+cP8d+gz2fFIbct1LaUEi6IR7B
	dHGV5dZ0xlGLHY7jSmIicrSTRkgERn39f1sDSZXLdHdxbUYBwMm1fkti3Ht4Yxtz
	bQanQBX7KPfYsdSQ8Lv4RtqrYR53WBjQ0Bxa/XiDK1Qia9GLeWW03/fJDLzoQQRS
	2IyCQVsWyVCgZLT7GCagKkiPv5bw+Hv3yapZXWZjC/8kxECHDDtzHLg8Hhv6RApE
	yHHUpznsK9WcbpjlcT6ab1aEtkdgj7LHcSBliwhXfb8MSQ==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c64hnmrej-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 13:11:05 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-5fb5bb202a7so7595069137.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 05:11:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770642664; x=1771247464; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RM9D0erFU6KFIPXwqdXYSlNeKu+Wim8uj//nd7mXEwQ=;
        b=RREOBtSM7Ne+yPMjiGNQLucfgDZ7iaOTzVdCF4Obh0HTRgmhxYK9ScDDI9VUFgbu8f
         8FLTVdGqVVZqUFcPEs7koZph8mJ0ZRGAW/NDtaTE5ZnhQalwLuklIywVgMBJCQbbGB+e
         aKpBHKtYm0oM2+i660E18rPTyQJE0GYnzraTGeFs7WbGwdW5XgPzb8F4chayu7BH470b
         DUMmUTxEQ8k1jYIUIPAfSpdxpqaQWHhXLo+9xhbY2+AIPol7LIY4+zfQVRx3DnaAh/A5
         3BZAOxHopw6svI4iX9c895JjZYT4Z+OHXOOTj4y3GF7xBnrZz6pD9b4+HHTzu1RFlTUW
         Gotg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770642664; x=1771247464;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RM9D0erFU6KFIPXwqdXYSlNeKu+Wim8uj//nd7mXEwQ=;
        b=FoQ7FJ/CLJHdoDOk+/pYF02YQmTTdS3k5A6SQG9tInvWJSBq8t56Sbuz5FZJHfTz95
         sHmXcOCxf5GTB7CtPIvge69PMgNBUSm0hV8AwAOhMK0geIxgZYYb3E9ZGovVPvj3FI/e
         42wl6oltpWvgsoGgbHSMGdMC201YS/v48FtLtoQ+wRqHreAtvlcXY4mtudXB0ppManV9
         VdM9VXSJOVuYSjO8Bqlab5dJ1dUn88jf9ioDM0mY1pB0em0E1gv3bz/TE0Op7gblGixb
         QP23WwyHwvYQTmKWW4UU68S2cHgXcW195yU11u9zwYGX61tHwI/gfPqN4YCntphbxB9r
         yO5Q==
X-Forwarded-Encrypted: i=1; AJvYcCWgHHvDzlFdOLZTIkRjjg92LN85GUGpiRAbBoHRH6iiJpKT+USpBynkKf1lheZgmA3zK5uBGB5ldBqG@vger.kernel.org
X-Gm-Message-State: AOJu0YzzpvrugdpKV7bC/EfZNNaTVZwLAAYXN3ozrsO8hfYOjgLtQkoQ
	D59pIP3R+TD3bYdDClXZa1HobFKP8925mmh1tbn5bWqH+HzEpv/4itqgSxLP6/XvDlKCPrMoH9q
	Cq45cVHXVAt+rlLtm6BfpbA0tdLyXUz6btZTXpk2OZtmQQc1RCZLOCCMDiDVY0vXo
X-Gm-Gg: AZuq6aJAUxVLonTvCyBTJGYd3IV1sU7U3P4qMEGd+q7jmzmbeCPmESHUU/FkZ6SOhCI
	K4wpCYOlpl8STxv4P12YDV3D9xVlarZhWQmb+XJzOkWC/1dS2zhdtL2omtvC3yCNRs9698iXpWK
	dvfGc6S7KqwzVQcG4tmcHBzMH2IwIcxg8+uwOgZnhXMT58d65ulRNHROmxh0NWztL79TSEtUDBA
	9oc5qTl1VYeSiY+hcaG8lr2ozchrjgnO6xZu5Weij1GCBCQ8pWinDkEY0p2LtrfXa40ncVuiHzY
	tuvOy5bCZmfIrVKxFgomkccZ4a5T+ljGJpfc0vNQ+xe6WrNSI6Lm6rdi76qxjpoDjPr+J86RQIw
	5PJcxiv8uu1IgQgiQ480LKqErhQyksM6XItRXt4eZzYfiXY/KxROi5bpAWjUiK0nYMoHEf6Bhvu
	HA8dg8ds9AuXE8CQJkofB4IoU=
X-Received: by 2002:a05:6102:160d:b0:5ee:a3eb:2854 with SMTP id ada2fe7eead31-5fae8cbbac2mr3080834137.45.1770642664551;
        Mon, 09 Feb 2026 05:11:04 -0800 (PST)
X-Received: by 2002:a05:6102:160d:b0:5ee:a3eb:2854 with SMTP id ada2fe7eead31-5fae8cbbac2mr3080825137.45.1770642664102;
        Mon, 09 Feb 2026 05:11:04 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44d2995fsm2635434e87.49.2026.02.09.05.11.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 05:11:03 -0800 (PST)
Date: Mon, 9 Feb 2026 15:11:01 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: Re: [PATCH v4] arm64: dts: qcom: x1-crd: add USB DisplayPort audio
Message-ID: <eop445dzscrlag3lzh7d7erbjoit4d74uwusqs5lykcucgmfrt@u5uyweg5nimo>
References: <20260209093237.33287-2-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260209093237.33287-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Proofpoint-GUID: ulH2oFPEejJxnBauPhp-GUdEbR-fyD57
X-Proofpoint-ORIG-GUID: ulH2oFPEejJxnBauPhp-GUdEbR-fyD57
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDExMSBTYWx0ZWRfX01BcrlkutUQL
 3b1vEdHAcCs+P2lITAzcksgSOIP2t+voyagW2cUm4oR064gDNvPfo1KOvRhzkYYWKSkHiegQn5/
 lzCQsmLxIOL5q+Yuc+fqAvNk4uz4AwEz+CxpYR73O9igEjGRFSegM7Ib1c68j10zqf5ZleAoKuR
 /Yy69xXwyMOBGz8+d954vQU4BQZ2E1i3w8xITRqvaIU9B9x6YWxtqBqWSRq6Np05jbjGB/xVjb0
 HXbAXy6GPfgAsTvoD/j4yTbyx5zNQM+mlTZChJkqxqO75Xc7iJ1y1bQzJeoSLQb+5+RZTDe1qAQ
 uX/6iH7C7BPkcONf1DKd2u1pghAJxSZSAXSLpNRRzNFb3O+VV84S0CbRYlYqCWamk+Vz8FB8g/0
 Qt9Qy+K/TXRloNdN+VfG8GJUjmd5ux5GJrEgyGIyvM7VzuyBw+m2ezmAM7Yy9NyNvTXCvX8k6As
 SMl+kzZAJLCj5NSDGUw==
X-Authority-Analysis: v=2.4 cv=SNlPlevH c=1 sm=1 tr=0 ts=6989dce9 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=iTZVlg6EzTYP-dx1yXAA:9 a=CjuIK1q_8ugA:10
 a=ODZdjJIeia2B_SHc_B0f:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 suspectscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090111
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263990-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 93A6F10F741
X-Rspamd-Action: no action

On Mon, Feb 09, 2026 at 10:32:38AM +0100, Krzysztof Kozlowski wrote:
> Add support for playing audio over USB DisplayPort (the two left USB-C
> ports on the CRD device).
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-266093-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wM10L4tWlGm8CwIAu9opvQ
	(envelope-from <devicetree+bounces-266093-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:52:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC7314B9CC
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:52:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8649E3017BCA
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 11:52:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1B9233557D;
	Tue, 17 Feb 2026 11:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XxwSyCwS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YkPAD5AW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76E3033556B
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771329151; cv=none; b=HXinC5Ed/taub2hOjzLqe933+32i1jpY/3KJvK9d/CWWxq9tP4F3wUgx5xRFSMgmMhECe3BuniBpHXwKDePiuKv7/Y7mJUkApIig8nbwT1SWXtxql01Uwb9sAb+ZGcilC9sHEPs6BiJr6zottrhuJx06gFHlYPUihlChWFOll2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771329151; c=relaxed/simple;
	bh=dAnsx0xJtEXMX1K0lbG5+T8XtzHHN4M4bEV/iMzg3/w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eKjIRydStDpS9X5/FNg6IsX+Frp6JTC9OiGIDhUZBt3/F9R1zSzZzv+zWJRlPSwnCVpKcjMso0d1I2NME2te8zEzPiXMgDsiDnNDqMbUG/AGkAe4fRY0gZemLxIEgNztxKG/vwKgq/7sV9rOV/uAJvzmAUG8Grn5iDN0XUR93do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XxwSyCwS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YkPAD5AW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H9GsSg1601350
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:52:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=N8IDiGrvccwFedf96OqEPLL7
	3MTWDtHz1uUgTvkRpt0=; b=XxwSyCwSVkYg9ZYy3G444Kvs3fLIwD2Apwzfr1TS
	l40/gOPfCCvKAFNbwLBJEDSYI4KuworD2tT4AvwDVijktiTyFPxQ2uKZLcxVAWpi
	U2Ls9dwaqJoBIC69vDJGE3TgfgiPyB/kCFcu/oOLEZUIUSOMFDPlb7rArryh5ntw
	RBH42y0AZADFyTleq0GtDIg5ayvnZLTs0Jkesn0+zIHmMxubKfj5/CP3aMxFRepg
	R9tzGWxfuHaE+NIcT7bVBUR7PbMMcaHgbhly+1pDBfPKUeemXooQisaWOfqYjFzx
	vR/PNipT2zssg8DQHAcg16DkMMfBXoo7ItFKGJCiRKkJFA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6tma3qr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:52:29 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb5359e9d3so2090261885a.2
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 03:52:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771329149; x=1771933949; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=N8IDiGrvccwFedf96OqEPLL73MTWDtHz1uUgTvkRpt0=;
        b=YkPAD5AWX4OSjtoPrX/kvKKpH+JF6JGHQ+uU7oGtZFEDshGnlnUXzDuOp5NbI22JBI
         Vs0E/0iPB8Id2BIWGq/0r/e4Ui2+n6vDYGlyqw4MHFEjdzNhql2My3pSqritqM8iHV6t
         7+One3SWD1ntOL8rlKUl/cj5LKyND8t8KQnCciWAsO1Y0aOPHtFuvMbCRRK0nKYNR9zc
         xcll6/SxvyKRK4GMrfzGCKqOrlPXC0111FnErc/WRcmlfzD4z4/b11+BF49Q+P5GgbUw
         KerXwiG68gjIlabBiRzg0XxAo0IfIraUvFt0n2HqmqYbp+J1nOhYjW+VxQ3GT/n7wJF2
         o6Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771329149; x=1771933949;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N8IDiGrvccwFedf96OqEPLL73MTWDtHz1uUgTvkRpt0=;
        b=ammuTlGQii1PvwKvy+iRX786SqmROSG536arYI93/jln23Yba0fb3/EREFwq3AQ1mi
         t+S6hCxVtLbJ6VS9s+nFEgv8GITyDtsK89BY4KjmXDbVYkIyqBBvziSCuIcJYyBBEE+y
         Mv1GMM0aW4JibPUGjw0MNvhqNez8fLvWoLQo7K5bxp+LmXJamzp1XMzvJqdYwKniu7mw
         5pRSKZXHspmzmr9uVy4+QTi/9D6Mswt/UfdFoIozZNGYXnJsQ+RXUmyH7uJ4Du8p/HjV
         NIDBlZdlnP94WzKSHVVgOp0nWCFC4k9UnXjEOP8ZALTUABiGS9QjK4dfJtq5crXkErpK
         mV5w==
X-Forwarded-Encrypted: i=1; AJvYcCUr5qoy++U+3p4SGk6KV4cwe35XI2Ddxp8FBxWLa3hQ3TIGcwfkDVfYUEBkYQRtq70umPwxWtSSW11/@vger.kernel.org
X-Gm-Message-State: AOJu0YzcAoBra0yctDQsGf2ygmDGh/STC9AGqLENHgBr1X16S/SEYsCA
	pO/m6JfY/sw9ndVTF7paUt+/C1Bgv+9LrNEmUw11AAm+IzbCB4ZhNEP8k5MKidu7kxlYwHLWGjl
	9YDBuItcXM8qmUPX4+9v17aGdMagyP/ce5uRz0EmkjAEb9I8OkBI8lbqxFTJCaMNI
X-Gm-Gg: AZuq6aLVxlx1zeWAbyQ1wrDNrX1bDXRuXviT6Qnj4e/RVptGIbSwWZPUqzEX2ihefze
	vBPiLbMSW7/0CBgvchEDafiz6C8CVFiLxqWGkHW5bAECSHg+GPKTppKhh5qiRO7uqierVpTKB3k
	6e/E1xXp/w33oqUMd/Mtg5J4B0+kHFRKhxkTDIDI1rEqjihPNmirpzZh98czKyUVzHT6Fxe7AAX
	ZrBN/yiId4MWMk6ZQqwNG8vnQHYyXDuRgRpec+chro2DYrls1YspsWkzCe66ZFpfyGwHu2ka+6K
	F1hj72Ou1x+bxwJSSdM/z++KJrJiQZ+SSXM31eWtGVGvDKVGmdi8QJZFvJh0krsNkottjrNVn6T
	iTMgI7dYVq82xSnrmf8vzsp29Vj46w+cH+9uA
X-Received: by 2002:a05:620a:19a4:b0:8b2:e9e1:400f with SMTP id af79cd13be357-8cb4224b5bfmr1439783485a.4.1771329149009;
        Tue, 17 Feb 2026 03:52:29 -0800 (PST)
X-Received: by 2002:a05:620a:19a4:b0:8b2:e9e1:400f with SMTP id af79cd13be357-8cb4224b5bfmr1439779785a.4.1771329148403;
        Tue, 17 Feb 2026 03:52:28 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4835d92267bsm769676135e9.0.2026.02.17.03.52.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 03:52:27 -0800 (PST)
Date: Tue, 17 Feb 2026 13:52:25 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
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
        linux-gpio@vger.kernel.org, Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH RFC 8/8] arm64: defconfig: Remove CONFIG_SM_TCSRCC_8750
Message-ID: <nlx3bt7uchvloqs5kutrtxawq4auorptpp2egjz4wrtepx5zrb@yoxmohxefwgy>
References: <20260202-topic-8750_tcsr-v1-0-cd7e6648c64f@oss.qualcomm.com>
 <20260202-topic-8750_tcsr-v1-8-cd7e6648c64f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260202-topic-8750_tcsr-v1-8-cd7e6648c64f@oss.qualcomm.com>
X-Proofpoint-GUID: yYp3gO2kpZmhMb_aIXEnNg1SM3KPPrt7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA5OCBTYWx0ZWRfX3UnQN3tVCrRO
 WWSCYlxfi1re7GXUihrU80plipE4QkPYEuj2dCptNNkjJq430NRFtJcWnUx4Gv2phgRGfGlb+SG
 Ui4Vl//ZXw0L5PVUMiLsEvXq5DDST42Q7nR8n+4OZG9Ro2s4CekS7h8vuZ8KhAjGjhJLArMGCzI
 vvBuEzeNJ9OMWKVDSWkgCyB2UWZmHsn4v7IWuWTy7Go0a/A5NZGN5ej20TRyZkWuYb0Bxq1Q4rv
 6Go+WH0jgDXlbEw1AJcqwsaNANTp3X8gQI/PONfhsk23R4aosM1fK/dVv5C53isIRxLEtPYWxHf
 w3jSzKJYQjXl87m9yTQXu+lHa0xidgBYDnVFJc76exiuInBvQ80pIt/+WztJhyQJN+wdb25ByYR
 DXXF9iYUHxU9Kedl9aS1g3Sfq+NSKlQVz7hgnlLMsGEFKaUGcClpIsWN2K3SYrCFg6Fhn8ZUIS0
 km9RmBBhN+y+ZxeAKUw==
X-Proofpoint-ORIG-GUID: yYp3gO2kpZmhMb_aIXEnNg1SM3KPPrt7
X-Authority-Analysis: v=2.4 cv=IOoPywvG c=1 sm=1 tr=0 ts=6994567d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=DpAI_w27UE3fYZUDY1kA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 bulkscore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170098
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266093-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2CC7314B9CC
X-Rspamd-Action: no action

On 26-02-02 15:57:40, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The driver and the config option have been removed. Clean it up.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>


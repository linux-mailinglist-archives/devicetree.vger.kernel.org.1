Return-Path: <devicetree+bounces-249267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FDBCDA535
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 20:12:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C6AF5303198B
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 19:12:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C29532FF657;
	Tue, 23 Dec 2025 19:12:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fXTzFcyr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OS6lCZ/y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EAB347FEE
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 19:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766517157; cv=none; b=lFa1IOwFMp7K2P7qc9DAY85CrWiAESJwvuCNEbdlWygXlJf11549QBXU7O9vuSTUAXBvKKVx25AILmHJRUpUt6H0zQSjyKhKLCi72DiIcfStGY51kdh8j8U9re06lPZvlMIvcAC5gjo7//er1H+IQHJXOLwCT+DueFkjN0Ann08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766517157; c=relaxed/simple;
	bh=xT23VP1hJSktFpT5RNB6SgoSRzFg/j4DgVvzfgIAxNg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dEFNXoQta9tXio2nxFJu2oGf6gYh12hz0q8tcL0V73W0FQPNLvbNAawQhvZb9ASdWOhEP1EecPj66+T5cHiY/JfitIL94iu7Jfrm429a/Suw3oH2McjeezlFlw1otsqgN9jPLSvDZuJ8tY4Aaw7tPV7sbfZs12vN0IpY7T6VVnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fXTzFcyr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OS6lCZ/y; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNHrcZ9678258
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 19:12:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=f6ZwESNMSQDTjKXMIzK45sJK
	hpysrJcum63XcYC3KQs=; b=fXTzFcyrf/7O5EbLeZk/zeh4xVlMhfBBETcgcevF
	xtxxgHMMZz5hwQ1ug2mGLYqg4qYsSNs2nWXNfY/C+H1u3Wu6j5Rdyy7isoxp6Tal
	hSqUkfQBsJbJgqyGj1HIgpz6GYV/N/jISEnqB+/zQ9V1Deuq1ZgJCGi0EC58Ais1
	xlvDJrSLsW6PPiU+tr5IOk8ZZE04R90h0LX1Ug/PBIvB0d2adsur8yt7UWnGG98y
	vmlT5M9X72OW2PVe8h+Kd8wsvfEDG1Fl0u8btJHdTB1p5AEpz8wkv141Sth2oPUs
	I0H0Z8cCPO76wwljtViP5jM0l4VPEsFwKDE+ZRBC2WxvtA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7yvq06hk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 19:12:35 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee09693109so101025921cf.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 11:12:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766517154; x=1767121954; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=f6ZwESNMSQDTjKXMIzK45sJKhpysrJcum63XcYC3KQs=;
        b=OS6lCZ/yyF7LEY9ONi9E6TADROty08QuBwrungQxbF/5h9Quj/m8nXmPz1oqVS4ecZ
         Hfiat3mN7Ej+vCYFFpoo3Oswwvcz4H6yaFdgdSL28aYvSkfMncCYuFOwBdr0iyJmWRQW
         sDg69ymVvO8VdomkoQLNURrT3cMfMzUGK8RPFtMPhf7uo4SSrDLIKxlfGSQq6QW8Bo1u
         uoBRdyug4uRH5E5LuVLc3BlphphvewzjkJ3SshoZUaJKB89/QDLKuCfn8wP9Ws8T27nJ
         vylEny+X8FlJcNUQByl0vZatWVZJZD67rpHleYyqDBTyTLy+jW8sVSbgbSyjBEdVDHaS
         4LFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766517154; x=1767121954;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f6ZwESNMSQDTjKXMIzK45sJKhpysrJcum63XcYC3KQs=;
        b=JhK2z4ZdOcv/xozNND6UccjRXMDdq3+pp7y4C09U69UX2XwCwsimJq3MzA8nLm5mYN
         J8xPcp0qEnLxkGy2j+jPc/lEYRpAhWQ3bBCtY0q/h1VaV7eE87nGYExQErsmgf4uGl6Y
         vAxX8sewiKX4iJegtruCwghVr3tGRF+cx4pXL/SXudoV9H7MB7rRFb/G15t37lbAp4L/
         A/87mrlkICICInIVrbR1mqAu5tovBsO4ZZfyAmzSLiyitlwyRLT5F/WSvQ47IgJQ30gT
         /eudyBzZmmMYyaVXSLrtqtRC0aXdqDQxiMww9A+DDEsYqRMl7ESTbsgNlC/uBaLdaLms
         FhTA==
X-Forwarded-Encrypted: i=1; AJvYcCXB3QNbM3E+eONVyGMg0/iRSBsQHrcMLPyfllcIce7oH5ygsvHdoHR4zeqvLq1t1suVq+WUDA9x4s/w@vger.kernel.org
X-Gm-Message-State: AOJu0Ywm/50RnyawbmOeiChrmWXpuOwXCrgFKo28n0Y23qNg6nR/TYEO
	BS6uMMH3LZV5qGcpxwvE5Ikw3QMR26uu4ixJUnI/2Yz8xI38QR96OkJiUw0CN+S+Y8+1UbGhBEl
	em5y1zvoOgcTipaWK/m+Wq1FmZU4ayBDcBpQcDWXDqsl0l28gk+T8u62c9h6Wl+He4kipcTm6
X-Gm-Gg: AY/fxX5uPZVaPMGs4I6YGI0OHJICd3enkVr4ZvNzb3iwv+sUDtINFMoO6PCw9aJEUV0
	ZBQIgRzqduON+w/Jmb3PzSM981+9IM2GI28QIM2DK5Del3NyXXY5G6xkNPcIWi07FZ5URbllVvi
	KxunFbBbqgqhXhT8GBvHirgxAqUBBoSj2dGy9LZRNBO5svgE5aLunoDEo3+A+Pk9DchyUVqPX1n
	58BUUpLr2W/hB5YoeI73cgZfohd6vIZ+32jVJP5HomgRVfIPfPadYJf2gSXVKTqWNQsDElyFcJG
	cQ8RovUSIgokdrsjEnJxYRssFXprtsvrxw8nXcCC7T3f6b3+x7Wb0S8wTgdIPXzfT8vUwT6uhXN
	BWpXwXpqU5RDDXXYvmaWua/7Wx7xA5T55eEDABe0Mov0SPmyVvTcU5sDM3zZ1ZFC1n4s59cQ7Od
	a4VRK0AYZepTjvNe/fuxGjwjE=
X-Received: by 2002:ac8:5d42:0:b0:4f1:cced:7a6a with SMTP id d75a77b69052e-4f4abd0e7d7mr221287451cf.32.1766517154233;
        Tue, 23 Dec 2025 11:12:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGPq3yL/EIo0VJy5aXskJoWmuFbQPkIsql7h0fKyHKoW1tqF9OAJZ2rOLx2ttb5LSIiH1oTOg==
X-Received: by 2002:ac8:5d42:0:b0:4f1:cced:7a6a with SMTP id d75a77b69052e-4f4abd0e7d7mr221287021cf.32.1766517153772;
        Tue, 23 Dec 2025 11:12:33 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185d5f07sm4321603e87.12.2025.12.23.11.12.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 11:12:33 -0800 (PST)
Date: Tue, 23 Dec 2025 21:12:31 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: qcom: Use hyphen in node names
Message-ID: <hrrddet5jni7yzlj4ro5zk66or5p7pzd3dtc3tga7jq2xqfvuv@hhkfjkkpvc4i>
References: <20251223152559.155703-4-krzysztof.kozlowski@oss.qualcomm.com>
 <20251223152559.155703-5-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251223152559.155703-5-krzysztof.kozlowski@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: geSH60O7vYL_xbCO-nKlegsewXNoN-Qj
X-Authority-Analysis: v=2.4 cv=abZsXBot c=1 sm=1 tr=0 ts=694ae9a3 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=cxglbGFaQTsLusRpAB8A:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: geSH60O7vYL_xbCO-nKlegsewXNoN-Qj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDE2MCBTYWx0ZWRfXz6qm3t0bae3G
 n1KxU8kVbqM9RUYIIe5G6BrQbo1mnw/W+1TYz1elG5vtzRFbTAMi4yYkdnApa3gN5CPSXgbgpNy
 IgnatwWi1YW3gslKCA/1eYbR/GjgRBNpRYZwd5YhOJKCdItzLSyYvQml7xCeY0l4H3pmIKc/qZT
 uh77FXz+zdEt2eXxZMRET+lS4re4+ZAIAWWTH4wDUby0Jw1fiuXHup3C3ESs4oPIdVVmdxWeQeE
 gbbqike+LMBjH9Tf2rfkDhPznZSGdkM4t3xDERumBJyvCraf4Ma20eqzAJyP70pHV9CPn/ASnhg
 KcbsIcmF84YHmfEMpxqZoN7cTzg8/82IsXdvjqIfcl9rEoAmLHYbUSgTkYyrIeBlVVwwpA95Cc6
 Ntie3V6MgX4X77bQZDixH3Clu+hSHRMPspKajATlheRID4G78v39knJccArN/szWvkNYZXr1U9F
 1MZDqHglblvyS6C/f0Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0 spamscore=0
 clxscore=1015 malwarescore=0 phishscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230160

On Tue, Dec 23, 2025 at 04:26:01PM +0100, Krzysztof Kozlowski wrote:
> DTS coding style prefers hyphens instead of underscores in the node
> names.  Change should be safe, because node names are not considered an
> ABI.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---
> 
> Patches done with sed.
> ---
>  arch/arm64/boot/dts/qcom/monaco.dtsi | 2 +-
>  arch/arm64/boot/dts/qcom/sdm670.dtsi | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

